$fn =60;
difference()
{
  union()
  {
    cylinder(11,11/2,11/2);
    translate([0,0,17.5]) sphere(9);
  }
  translate([0,0,-1]) cylinder(11,4.85/2,4.85/2); 
  translate([0,0,17.5+5.7]) sphere(13); 
  translate([-10,-10,17.5-5.7]) cube([20,20,1]);
}  