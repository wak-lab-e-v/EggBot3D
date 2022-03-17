$fn = 60;
b = 35;

cylin = 6;
dist = 20;
delta = 2;
h = 2*cylin+5*delta;

kreuz();
module top()
{
  difference()
  {
    cube([b,b,6]);
    translate([-1,(b-dist)/2,7]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    translate([-1,(b-dist)/2+dist,7]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    translate([b/2,b/2,-1])  cylinder(30,3.5/2,3.5/2);
    //tanslate([b/2,b/2,-1])  cylinder(3,7.5/2,3.5/2);
    translate([b/2,b/2,-1])  cone(4);
  }  
}

module bottom()
{
  difference()
  {
    cube([b,b,6]);
    translate([-1,(b-dist)/2,7]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    translate([-1,(b-dist)/2+dist,7]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    translate([b/2,b/2,-1])  cylinder(30,3.5/2,3.5/2);
    translate([b/2,b/2,-1]) nut(SW = 5.8, H = 4.5);
  }  
}

kreuz();

module kreuz()
{
  difference()
  {
    cube([b,b,cylin]);
    translate([-1,(b-dist)/2,cylin+delta/2]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    translate([-1,(b-dist)/2+dist,cylin+delta/2]) rotate([0,90,0])cylinder(50,cylin/2,cylin/2);
    
    translate([(b-dist)/2, -1,-delta/2]) rotate([-90,0,0])cylinder(50,cylin/2,cylin/2);
    translate([(b-dist)/2+dist,-1,-delta/2]) rotate([-90,0,0])cylinder(50,cylin/2,cylin/2);
    translate([b/2,b/2,-1])  cylinder(30,3.5/2,3.5/2);
  }  
}


module nut(SW = 5, H = 5)
{
  cylinder(r = SW/(2*cos(30)),h = H, $fn=6);
}  

module cone (h = 5, Angle = 90)
{
  cylinder(h, h,0, $fn=60);
}  
