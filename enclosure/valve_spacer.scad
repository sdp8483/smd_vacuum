$fn = 50;

L = 8;
id = 4.0;
od = 2*((id/2) + (0.4*4));

difference() {
    cylinder(h=L, d=od);
    cylinder(h=L, d=id);
}