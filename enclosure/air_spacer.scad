$fn = 50;

L = 5.9;
id = 15;
od = 18.5;

difference() {
    cylinder(h=L, d=od);
    cylinder(h=L, d=id);
}