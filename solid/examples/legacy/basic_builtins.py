# ======================================================
# = add relative path to the solid package to sys.path =
# ======================================================
import sys
from pathlib import Path
solidPath = Path(__file__).absolute().parent.parent.parent.parent.as_posix()
sys.path.append(solidPath)
#==================================================

from solid import *
from solid import scad_render_to_file

def second_func():
    return color("GREEN")(translate([0, -20, 0])(cube([10, 10, 10])))

def demo_builtins():
    sp = debug(color("RED")(rotate(v=[0, 0, 90], a=1)(sphere(10))))
    cu = second_func()
    c2 = translate([0, -20, 0])(second_func())
    return sp + cu + c2

if __name__ == '__main__':
    out_dir = Path(sys.argv[1]) if len(sys.argv) > 1 else None
    a = debug(demo_builtins())
    file_out = scad_render_to_file(a, out_dir=out_dir)
    print(f"{__file__}: SCAD file written to: \n{file_out}")
