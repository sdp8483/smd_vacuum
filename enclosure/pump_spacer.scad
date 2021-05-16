$fn = 50;

L = 12.3-3-1.2;
id = 4.3;
od = 2*((id/2) + (0.4*4));

difference() {
    cylinder(h=L, d=od);
    cylinder(h=L, d=id);
}