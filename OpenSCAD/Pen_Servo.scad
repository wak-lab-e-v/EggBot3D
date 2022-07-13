$fn = 100;
Pen_Dia = 13.5;
winkel = 30;
HP = 15;

//translate([-2,0,0]) import("Pen_ServoLeft_Holder_Part-2.stl");

Penring();
module Penring()
{
  translate([0,19,0]) difference()
  {
  translate([0,0,0]) cylinder(HP,(Pen_Dia+4)/2,(Pen_Dia+4) /2);
  translate([0,0,-1]) cylinder(20,Pen_Dia/2,Pen_Dia/2);
  rotate([0,0,winkel])
  {
     translate([0,0,5.3]) rotate([0,-90,0]) cylinder(100,3.5/2,3.5/2); 
  }  
  }
}
Klemmung();

module Klemmung()
{
  b = 11.95;
  translate([0,19,0]) difference()
  {
  translate([0,0,0]) cylinder(HP-2,(Pen_Dia+16)/2,(Pen_Dia+16) /2);
  translate([0,0,-1]) cylinder(20,(Pen_Dia+4)/2,(Pen_Dia+4)/2);
  rotate([0,0,winkel])
  {
    translate([-50,b/2,-1]) cube([100,100,40]);
    translate([-50,-100-(b/2),-1]) cube([100,100,40]);
    translate([0,-50,-1]) cube([100,100,40]); 
    translate([0,0,5.3]) rotate([0,-90,0]) cylinder(100,3.5/2,3.5/2); 
      
    translate([-5.2-(Pen_Dia/2),-5.8/2,1]) cube([3,5.8,18]);   
  }
  }
}
Arm();
module Arm()
{
  h = 7; 
  b = 12;
  l = 23.5;
  difference()
  {
    union()
    {
      translate([-b/2,-l,h/2]) rotate([0,90,0]) cylinder(b,h/2,h/2); 
      translate([-b/2,-l,0]) cube([b,l+19-Pen_Dia/2,h]);
    }
     translate([-b/2-1,-l-0.2,h/2-0.2]) rotate([0,90,0]) cylinder(b+2,2.1/2,2.1/2); 
     translate([-b/2-1,-l+20,h/2-0.2]) rotate([0,90,0]) cylinder(b+2,2.6/2,2.6/2); 
  }
}

