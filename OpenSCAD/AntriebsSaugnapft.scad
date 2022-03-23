$fn =60;
module V1()
{
difference()
{
  union()
  {
    cylinder(11,11/2,11/2);
    translate([0,0,17.5]) sphere(9);
  }
  translate([0,0,-1]) cylinder(11,4.85/2,4.85/2); 
  translate([0,0,17.5+5.7]) sphere(13); 
  translate([-10,-10,17.5-5.7]) cube([20,20,6]);
}  
}


difference()
{
  union()
  {
    cylinder(11,11/2,11/2);
    translate([0,0,17.0]) sphere(11);
  }
  translate([0,0,-1]) cylinder(10,4.80/2,4.80/2); 
  translate([0,0,17.5+4.7]) sphere(13.0); 
  translate([-15,-15,17.5-5.7]) cube([30,30,6]);
}  
translate([0,0,11.5]) make_ring_of(7.8, 3) sphere(1); 


module make_ring_of(radius, count)
{
    for (a = [0 : floor(count) - 1]) {
        angle = a * 360 / floor(count);
        translate(radius * [sin(angle), -cos(angle), 0])
            rotate([0, 0, angle])
                children();
    }
}