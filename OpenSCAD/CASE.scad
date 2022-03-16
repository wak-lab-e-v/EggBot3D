use <arduino_Uno_ref.scad>
use <Keyes_4988.scad>

// translate([0,-100,0]) Keyes_4988();
$fn = 30;
Size = [80,60,23];
d = 3.8; 
open = 00;
podh = 6.5;
wandung = 2;
druck = false;


if (!druck)
{ 
  Bottom();
  rotate_about_pt(-170*sin(180*$t)-open,[1,0,0],[Size[0],Size[1]+d/2,Size[2]]) translate([Size[0],0,2*Size[2]]) rotate([0,180,0]) Top(); 
}
else
{
  Top(); 
}
module Bottom()
{
 difference()
 {
   Shell(Size,wall = 2);
   translate([-6,35.2,3+podh]) cube([12,13,12]);
   translate([-6,7.2,3+podh]) cube([12,9.5,12]);
   
 }
 Hinge(Size); 
 translate([2.5,3.5,podh+wandung]) 
 {
   if (!druck) arduino_Uno_ref();
   translate([14.0,2.54,-podh]) Pod(h=podh,d1=5,d2=2);
   translate([66.0,7.62,-podh]) Pod(h=podh,d1=5,d2=2);
   translate([66.0,35.62,-podh]) Pod(h=podh,d1=5,d2=2);
   translate([15.2,50.8,-podh]) Pod(h=podh,d1=5,d2=2);
 }
 translate([75,5,2]) Pod(h=6,d1=7,d2=3);
}



module Top()
{
  difference()
 {
   Shell(Size,wall = 2);
   translate([5,5,-1]) cylinder(10,3,3);
   translate([75,35.2,11+podh]) cube([12,13,12]);
 }
 h = 11;
 translate([5,5,2]) Pod(h=16,d1=9,d2=6);
 translate([5,5,2+h]) Pod(h=16-h,d1=9,d2=3.5);
 if (!druck) color("silver") translate([5,5,-1+h]) {cylinder(33,1.5,1.5); cylinder(3,2.6,2.6);}
  Hinge(Size, d = d);  
  
  translate([2,10+42,podh+wandung]) rotate([0,0,-90]) 
  {
    if (!druck) Keyes_4988();
    translate([37,3.5,-podh]) Pod(h=podh,d1=5,d2=2);
    translate([5,3.5,-podh]) Pod(h=podh,d1=5,d2=2);
    translate([21,32,-podh]) Pod(h=podh,d1=5,d2=2);
  }  
  translate([78,10,podh+wandung]) rotate([0,0,90]) 
  {
    if (!druck) Keyes_4988();
    translate([37.0,3.5,-podh]) Pod(h=podh,d1=5,d2=2);
    translate([5,3.5,-podh]) Pod(h=podh,d1=5,d2=2);
    translate([21,32,-podh]) Pod(h=podh,d1=5,d2=2);
  }  
}

module Shell(Size = [20,20,5], r = 2, wall = 1.2, debug = [0,0,0])
{
  Tolleranz = 0.2;
  translate([r,r,0]) difference()
  {  
    linear_extrude(Size[2]) offset(r = r, $fn=40) square([Size[0]-2*r ,Size[1]-2*r]);
    ri = r>wall? r-wall:0;
    translate([wall-r+ri,wall-r+ri,wall]) linear_extrude(Size[2])   offset(r = ri, $fn=40) square([Size[0]-2*ri+Tolleranz-2*wall,Size[1]-2*ri+Tolleranz-2*wall]);
    if (debug[0]!=0 || debug[1]!=0 || debug[2]!=0) translate([debug[0]*Size[0]/2-r-1,debug[1]*Size[1]/2-r-1,debug[2]*Size[2]/2-1]) cube(Size[0]+r+2,Size[1]+r+2,Size[2]+r+2);
  }    
 }

 
module Hinge(Size = [20,20,5],l=10,d=3.8)
{
  Tolleranz = 0.15;
  n = round(abs(Size[0]/(2*l)-1));
  echo(n);
  angle = 40; //acos(d/Size[0]);
  for (i=[0:n-1]) translate([(Tolleranz+Size[0]-(2*n*l))/2+2*i*l,Size[1]+d/2,Size[2]]) rotate([-90,180,-90])
  {
    difference()
    {
      cylinder(l-Tolleranz,d/2,d/2);
      translate([0,0,-Tolleranz/2]) cylinder(l,d/4,d/4);
    }  
    linear_extrude(l-Tolleranz)  polygon([[-d/2,0],[-d/2*sin(angle/2),-d/2*cos(angle/2)],[d/2*cos(angle),-d/2*sin(angle)],[-d/2,-d/sin(angle)]]);
  }
}

module Pod(h=3,d1=5,d2=2)
{
  difference()
  {
    cylinder(h,d1/2,d1/2);
    translate([0,0,-0.5]) cylinder(h+1,d2/2,d2/2);
  } 
}

// rotate as per a, v, but around point pt
module rotate_about_pt(a, v, pt) {
    translate(pt)
        rotate(a,v)
            translate(-pt)
                children();   
}