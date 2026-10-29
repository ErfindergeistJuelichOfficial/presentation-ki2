#!/usr/bin/env python3
# Erzeugt die Vorher/Nachher-Ablaufdiagramme als SVG in CI-Farben (ohne externe Tools).
# Aufruf:  python3 beispiele/bildverarbeitung-diagramm/diagramme.py   → vorher.svg / nachher.svg im selben Ordner
import sys
import os
OUT = sys.argv[1] if len(sys.argv) > 1 else os.path.dirname(os.path.abspath(__file__))
from xml.sax.saxutils import escape

MINT, AMBER, DARK, MED, GREY, WHITE = "#159989", "#F9B338", "#222222", "#2d2d2d", "#aaaaaa", "#ffffff"

class Diagram:
    def __init__(self, W, H, cw, rh, x0, y0, nw, nh, fs):
        self.W, self.H = W, H
        self.cw, self.rh, self.x0, self.y0 = cw, rh, x0, y0
        self.nw, self.nh, self.fs = nw, nh, fs
        self.nodes = {}
        self.edges = []
        self.paths = []

    def pos(self, c, r):
        return self.x0 + c * self.cw, self.y0 + r * self.rh

    def node(self, nid, c, r, lines, kind="box", w=None):
        cx, cy = self.pos(c, r)
        self.nodes[nid] = dict(cx=cx, cy=cy, lines=lines, kind=kind, w=w or self.nw, h=self.nh)

    def side(self, nid, s):
        if isinstance(nid, tuple):
            return nid
        if isinstance(s, tuple):
            return s
        n = self.nodes[nid]
        cx, cy, w, h = n["cx"], n["cy"], n["w"], n["h"]
        return {"t": (cx, cy - h / 2), "b": (cx, cy + h / 2), "l": (cx - w / 2, cy), "r": (cx + w / 2, cy)}[s]

    def edge(self, a, sa, b, sb, via=(), label=None, lpos=None):
        pts = [self.side(a, sa)] + list(via) + [self.side(b, sb)]
        self.edges.append((pts, label, lpos))

    def svg(self):
        o = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {self.W} {self.H}" width="{self.W}" height="{self.H}" font-family="sans-serif">',
             f'<defs><marker id="arr" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="6" markerHeight="6" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="{MINT}"/></marker></defs>']
        for pts, label, lpos in self.edges:
            d = " ".join(f"{x:.0f},{y:.0f}" for x, y in pts)
            o.append(f'<polyline points="{d}" fill="none" stroke="{MINT}" stroke-width="2" marker-end="url(#arr)"/>')
            if label:
                if lpos is None:
                    (x1, y1), (x2, y2) = pts[0], pts[1]
                    lpos = ((x1 + x2) / 2 + 6, (y1 + y2) / 2 - 4)
                col = AMBER if label in ("ja", "yes") else GREY
                o.append(f'<text x="{lpos[0]:.0f}" y="{lpos[1]:.0f}" fill="{col}" font-size="{self.fs - 2}" font-weight="bold">{escape(label)}</text>')
        for n in self.nodes.values():
            cx, cy, w, h = n["cx"], n["cy"], n["w"], n["h"]
            x, y = cx - w / 2, cy - h / 2
            if n["kind"] == "term":
                o.append(f'<rect x="{x:.0f}" y="{y:.0f}" width="{w}" height="{h}" rx="{h/2:.0f}" fill="{MINT}"/>')
                tc = DARK
            elif n["kind"] == "dec":
                o.append(f'<polygon points="{cx:.0f},{y:.0f} {x+w:.0f},{cy:.0f} {cx:.0f},{y+h:.0f} {x:.0f},{cy:.0f}" fill="{MED}" stroke="{AMBER}" stroke-width="2"/>')
                tc = WHITE
            elif n["kind"] == "phase":
                o.append(f'<rect x="{x:.0f}" y="{y:.0f}" width="{w}" height="{h}" rx="8" fill="{MED}" stroke="{MINT}" stroke-width="3"/>')
                tc = WHITE
            elif n["kind"] == "skip":
                o.append(f'<rect x="{x:.0f}" y="{y:.0f}" width="{w}" height="{h}" rx="8" fill="{DARK}" stroke="{GREY}" stroke-width="1.5" stroke-dasharray="5 4"/>')
                tc = GREY
            else:
                o.append(f'<rect x="{x:.0f}" y="{y:.0f}" width="{w}" height="{h}" rx="6" fill="{MED}" stroke="{MINT}" stroke-width="1.5"/>')
                tc = WHITE
            n_l = len(n["lines"])
            lh = self.fs * 1.2
            y0 = cy - (n_l - 1) * lh / 2 + self.fs * 0.35
            for i, line in enumerate(n["lines"]):
                bold = ' font-weight="bold"' if i == 0 and n["kind"] in ("phase", "term") else ""
                fs = self.fs if i == 0 else self.fs - 2
                o.append(f'<text x="{cx:.0f}" y="{y0 + i*lh:.0f}" fill="{tc}" font-size="{fs}" text-anchor="middle"{bold}>{escape(line)}</text>')
        o.append("</svg>")
        return "\n".join(o)


# ---------------- Vorher: eine große Schleife ----------------
v = Diagram(W=840, H=1130, cw=250, rh=74, x0=190, y0=40, nw=210, nh=48, fs=12)
v.node("start", 0, 0, ["process_album()"], "term")
v.node("lv", 0, 1, ["load_vision_model()", "Florence-2"])
v.node("lb", 0, 2, ["load_blur_models()", "owlvit + mtcnn"])
v.node("fe", 0, 3, ["For each image file"])
v.node("fin", 1, 3, ["return parts[]"], "term", w=170)
v.node("ce", 0, 4, ["sourceHash in", "existing_by_hash?"], "dec", w=210)
v.node("cf", 1, 4, ["output files present", "& blur state matches?"], "dec", w=220)
v.node("cc", 2, 4, ["caption missing &", "VISION_MODEL active?"], "dec", w=200)
v.node("gs", 2, 5.4, ["generate_caption()", "write_album_meta()"], w=190)
v.node("sk", 2, 6.8, ["Skip image", "parts.append(...)"], w=190)
v.node("oo", 0, 6, ["open_and_orient()", "EXIF rotation"])
v.node("fd", 0, 7, ["file_datetime()"])
v.node("mn", 0, 8, ["make_normalized()"])
v.node("db", 0, 9, ["img_needs_blur?"], "dec")
v.node("bf", 1, 10, ["blur_faces()", "owlvit -> mtcnn"])
v.node("mt", 0, 11, ["make_thumbnail()"])
v.node("gc", 0, 12, ["generate_caption()", "Florence-2"])
v.node("sw", 0, 13, ["save _t.webp + _n.webp"])
v.node("wm", 0, 14, ["write_album_meta()", "write_index()"])

v.edge("start", "b", "lv", "t"); v.edge("lv", "b", "lb", "t"); v.edge("lb", "b", "fe", "t")
v.edge("fe", "b", "ce", "t")
v.edge("fe", "r", "fin", "l", label="alle fertig", lpos=(300, 255))
v.edge("ce", "r", "cf", "l", label="ja")
v.edge("ce", "b", "oo", "t", label="nein", lpos=(196, 420))
v.edge("cf", "r", "cc", "l", label="ja")
v.edge("cf", "b", "oo", "r", via=[(440, 484)], label="nein", lpos=(446, 420))
v.edge("cc", "b", "gs", "t", label="ja")
v.edge("cc", "r", "sk", "r", via=[(820, 336), (820, 543)], label="nein", lpos=(796, 326))
v.edge("oo", "b", "fd", "t"); v.edge("fd", "b", "mn", "t"); v.edge("mn", "b", "db", "t")
v.edge("db", "r", "bf", "t", via=[(440, 706)], label="ja", lpos=(320, 700))
v.edge("db", "b", "mt", "t", label="nein", lpos=(196, 800))
v.edge("bf", "b", "mt", "r", via=[(440, 854)])
v.edge("mt", "b", "gc", "t"); v.edge("gc", "b", "sw", "t"); v.edge("sw", "b", "wm", "t")
# Rücksprünge: "nächstes Bild" zurück in die Schleife (Sammelleitung links)
v.edge("wm", "l", (85, 248), "x", via=[(30, 1076), (30, 248)])
v.edge("gs", "l", (85, 256), "x", via=[(560, 439), (560, 589), (50, 589), (50, 256)])
v.edge("sk", "b", (85, 264), "x", via=[(690, 600), (70, 600), (70, 264)])

# ---------------- Nachher: vier Phasen ----------------
n = Diagram(W=560, H=820, cw=260, rh=95, x0=170, y0=40, nw=280, nh=70, fs=15)
n.node("start", 0, 0, ["process_album()"], "term", w=200)
n.node("p1", 0, 1, ["Phase 1: Basics", "sha256, orient, normalize", "save _n.webp"], "phase")
n.node("c1", 0, 2.15, ["any caption missing?"], "dec", w=260)
n.node("p2", 0, 3.3, ["Phase 2: Captions", "load model → caption all", "→ unload"], "phase")
n.node("s2", 1.15, 3.3, ["skip"], "skip", w=110, )
n.node("c2", 0, 4.45, ["any image needs blur?"], "dec", w=260)
n.node("p3", 0, 5.6, ["Phase 3: Blur", "per model: load → blur all", "→ unload"], "phase")
n.node("s3", 1.15, 5.6, ["skip"], "skip", w=110)
n.node("p4", 0, 6.75, ["Phase 4: Thumbnails", "make_thumbnail", "save _t.webp"], "phase")
n.node("fin", 0, 7.75, ["return parts[]"], "term", w=200)
for a, b in [("start", "p1"), ("p1", "c1"), ("p2", "c2"), ("p3", "p4"), ("p4", "fin")]:
    n.edge(a, "b", b, "t")
n.edge("c1", "b", "p2", "t", label="ja")
n.edge("c1", "r", "s2", "t", via=[(469, 244)], label="nein", lpos=(330, 238))
n.edge("s2", "b", "c2", "r", via=[(469, 463)])
n.edge("c2", "b", "p3", "t", label="ja")
n.edge("c2", "r", "s3", "t", via=[(469, 463)], label="nein", lpos=(330, 457))
n.edge("s3", "b", "p4", "r", via=[(469, 681)])

open(OUT + "/vorher.svg", "w").write(v.svg())
open(OUT + "/nachher.svg", "w").write(n.svg())
