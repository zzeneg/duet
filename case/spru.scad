count = 3;
spacing = 17;
r = 0.8;

stl1 ="./knob-5way-ergo.stl";
stl2 ="./knob-5way-round.stl";
stl3 ="./knob-ec12.stl";

union() {
    import(stl1);
    translate([0, spacing, 0]) import(stl2);
    translate([-2, spacing * 2, 0]) import(stl3);

    translate([2, 0, - 0.9 * r])
    rotate ([270, 0, 0])
    cylinder(h = (count) * spacing - 21, r = r, $fn=15)
    ;
};
