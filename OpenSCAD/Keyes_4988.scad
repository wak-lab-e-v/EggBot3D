Detailgrad = 24; 
$fn=Detailgrad; 
holewithorigin=false; 
EnableVias=true; 
EnableParts=true; 
EnableWires=true;   // Disable for smaler export file
EnableMeasures=true;  // Disable for smaler export file
EnablePolygones=true;  // Disable for smaler export file
HideAutogeneratedParts=true;  // Disable yellow boxes
Package_path = "C:/DEVELOP/Eagle.Bibliotheken/ulp/";
module Keyes_4988(){
	board_thickness = 1.600;
	eta = 0.2;
	board_size = [42.000,34.500];
	board_origin = [0,0];
	translate([0,0,0]) union()   // PCB whith parts and text
	{
		color("DarkRed")linear_extrude(height=board_thickness,center=false, convexity=10)
		union()  // PCB 
		{
			difference() // PCB and holes 
			{
	board_polygons = [[[42.000,0.000],[42.000,34.500],[0.000,34.500],[0.000,0.000]]];
				translate(board_origin)  polygon(points = board_polygons[0]); //Board
				translate([5.000,3.500]) circle(r=1.500,$fn=$fn); //Hole
				translate([37.000,3.500]) circle(r=1.500,$fn=$fn); //Hole
				if (Detailgrad > 9) // Drill part holes 
				{
					translate([39.688,15.558])circle(r=0.508,$fn=$fn); //MA03-1 1
					translate([39.688,18.098])circle(r=0.508,$fn=$fn); //MA03-1 2
					translate([39.688,20.637])circle(r=0.508,$fn=$fn); //MA03-1 3
					translate([15.240,13.970])circle(r=0.406,$fn=$fn); //FE08 1
					translate([17.780,13.970])circle(r=0.406,$fn=$fn); //FE08 2
					translate([20.320,13.970])circle(r=0.406,$fn=$fn); //FE08 3
					translate([22.860,13.970])circle(r=0.406,$fn=$fn); //FE08 4
					translate([25.400,13.970])circle(r=0.406,$fn=$fn); //FE08 5
					translate([27.940,13.970])circle(r=0.406,$fn=$fn); //FE08 6
					translate([30.480,13.970])circle(r=0.406,$fn=$fn); //FE08 7
					translate([33.020,13.970])circle(r=0.406,$fn=$fn); //FE08 8
					translate([15.240,26.670])circle(r=0.406,$fn=$fn); //FE08 1
					translate([17.780,26.670])circle(r=0.406,$fn=$fn); //FE08 2
					translate([20.320,26.670])circle(r=0.406,$fn=$fn); //FE08 3
					translate([22.860,26.670])circle(r=0.406,$fn=$fn); //FE08 4
					translate([25.400,26.670])circle(r=0.406,$fn=$fn); //FE08 5
					translate([27.940,26.670])circle(r=0.406,$fn=$fn); //FE08 6
					translate([30.480,26.670])circle(r=0.406,$fn=$fn); //FE08 7
					translate([33.020,26.670])circle(r=0.406,$fn=$fn); //FE08 8
					translate([2.460,14.190])circle(r=0.406,$fn=$fn); //EDG-03 1
					translate([5.000,14.190])circle(r=0.406,$fn=$fn); //EDG-03 2
					translate([7.540,14.190])circle(r=0.406,$fn=$fn); //EDG-03 3
					translate([7.540,21.810])circle(r=0.406,$fn=$fn); //EDG-03 4
					translate([5.000,21.810])circle(r=0.406,$fn=$fn); //EDG-03 5
					translate([2.460,21.810])circle(r=0.406,$fn=$fn); //EDG-03 6
				} // end Drill part holes
			} //end difference() PCB and holes 
			if (holewithorigin) 
			{
				//Print a little cross in the PCB holes 
					translate([5.000,3.500]) { polygon([[0,0],[-0.38,-0.38],[-0.38,0.38]]); polygon([[0,0],[0.38,0.38],[0.38,-0.38]]);} //Hole
					translate([37.000,3.500]) { polygon([[0,0],[-0.38,-0.38],[-0.38,0.38]]); polygon([[0,0],[0.38,0.38],[0.38,-0.38]]);} //Hole
			}
		} //end union() // PCB 
		if (Detailgrad > 10) color("#DFDDE0",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.040,center=false, convexity=10) difference()  { 
	  union() { 
					translate([39.688,15.558]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 1
			translate([39.688,18.098]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 2
			translate([39.688,20.637]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 3
			translate([15.240,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 1
			translate([17.780,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 2
			translate([20.320,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 3
			translate([22.860,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 4
			translate([25.400,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 5
			translate([27.940,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 6
			translate([30.480,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 7
			translate([33.020,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 8
			translate([15.240,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 1
			translate([17.780,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 2
			translate([20.320,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 3
			translate([22.860,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 4
			translate([25.400,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 5
			translate([27.940,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 6
			translate([30.480,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 7
			translate([33.020,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 8
			translate([2.460,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 1
			translate([5.000,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 2
			translate([7.540,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 3
			translate([7.540,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 4
			translate([5.000,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 5
			translate([2.460,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 6
		}
			translate([39.688,15.558]) circle(r=0.508,$fn=$fn);
			translate([39.688,18.098]) circle(r=0.508,$fn=$fn);
			translate([39.688,20.637]) circle(r=0.508,$fn=$fn);
			translate([15.240,13.970]) circle(r=0.406,$fn=$fn);
			translate([17.780,13.970]) circle(r=0.406,$fn=$fn);
			translate([20.320,13.970]) circle(r=0.406,$fn=$fn);
			translate([22.860,13.970]) circle(r=0.406,$fn=$fn);
			translate([25.400,13.970]) circle(r=0.406,$fn=$fn);
			translate([27.940,13.970]) circle(r=0.406,$fn=$fn);
			translate([30.480,13.970]) circle(r=0.406,$fn=$fn);
			translate([33.020,13.970]) circle(r=0.406,$fn=$fn);
			translate([15.240,26.670]) circle(r=0.406,$fn=$fn);
			translate([17.780,26.670]) circle(r=0.406,$fn=$fn);
			translate([20.320,26.670]) circle(r=0.406,$fn=$fn);
			translate([22.860,26.670]) circle(r=0.406,$fn=$fn);
			translate([25.400,26.670]) circle(r=0.406,$fn=$fn);
			translate([27.940,26.670]) circle(r=0.406,$fn=$fn);
			translate([30.480,26.670]) circle(r=0.406,$fn=$fn);
			translate([33.020,26.670]) circle(r=0.406,$fn=$fn);
			translate([2.460,14.190]) circle(r=0.406,$fn=$fn);
			translate([5.000,14.190]) circle(r=0.406,$fn=$fn);
			translate([7.540,14.190]) circle(r=0.406,$fn=$fn);
			translate([7.540,21.810]) circle(r=0.406,$fn=$fn);
			translate([5.000,21.810]) circle(r=0.406,$fn=$fn);
			translate([2.460,21.810]) circle(r=0.406,$fn=$fn);

		}
		if (EnableWires && (Detailgrad > 12)) color("#7C770F",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
				}
		if (EnableVias && (Detailgrad > 12)) union() { 		}

		}
			if (EnablePolygones) {
			}
		if (Detailgrad > 10) color("#DFDDE0",1) translate([0,0,-0.022]) linear_extrude(height=0.040,center=false, convexity=10) difference()  { 
	  union() { 
					translate([39.688,15.558]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 1
			translate([39.688,18.098]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 2
			translate([39.688,20.637]) rotate([0,0,270.000]) EaglePad([1.524,3.048], 100); //MA03-1 3
			translate([15.240,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 1
			translate([17.780,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 2
			translate([20.320,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 3
			translate([22.860,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 4
			translate([25.400,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 5
			translate([27.940,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 6
			translate([30.480,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 7
			translate([33.020,13.970]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 8
			translate([15.240,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 1
			translate([17.780,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 2
			translate([20.320,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 3
			translate([22.860,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 4
			translate([25.400,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 5
			translate([27.940,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 6
			translate([30.480,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 7
			translate([33.020,26.670]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //FE08 8
			translate([2.460,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 1
			translate([5.000,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 2
			translate([7.540,14.190]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 3
			translate([7.540,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 4
			translate([5.000,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 5
			translate([2.460,21.810]) rotate([0,0,180.000]) EaglePad([1.321,2.642], 100); //EDG-03 6
		}
			translate([39.688,15.558]) circle(r=0.508,$fn=$fn);
			translate([39.688,18.098]) circle(r=0.508,$fn=$fn);
			translate([39.688,20.637]) circle(r=0.508,$fn=$fn);
			translate([15.240,13.970]) circle(r=0.406,$fn=$fn);
			translate([17.780,13.970]) circle(r=0.406,$fn=$fn);
			translate([20.320,13.970]) circle(r=0.406,$fn=$fn);
			translate([22.860,13.970]) circle(r=0.406,$fn=$fn);
			translate([25.400,13.970]) circle(r=0.406,$fn=$fn);
			translate([27.940,13.970]) circle(r=0.406,$fn=$fn);
			translate([30.480,13.970]) circle(r=0.406,$fn=$fn);
			translate([33.020,13.970]) circle(r=0.406,$fn=$fn);
			translate([15.240,26.670]) circle(r=0.406,$fn=$fn);
			translate([17.780,26.670]) circle(r=0.406,$fn=$fn);
			translate([20.320,26.670]) circle(r=0.406,$fn=$fn);
			translate([22.860,26.670]) circle(r=0.406,$fn=$fn);
			translate([25.400,26.670]) circle(r=0.406,$fn=$fn);
			translate([27.940,26.670]) circle(r=0.406,$fn=$fn);
			translate([30.480,26.670]) circle(r=0.406,$fn=$fn);
			translate([33.020,26.670]) circle(r=0.406,$fn=$fn);
			translate([2.460,14.190]) circle(r=0.406,$fn=$fn);
			translate([5.000,14.190]) circle(r=0.406,$fn=$fn);
			translate([7.540,14.190]) circle(r=0.406,$fn=$fn);
			translate([7.540,21.810]) circle(r=0.406,$fn=$fn);
			translate([5.000,21.810]) circle(r=0.406,$fn=$fn);
			translate([2.460,21.810]) circle(r=0.406,$fn=$fn);

		}
		if (EnableWires && (Detailgrad > 12)) color("#7C770F",1) translate([0,0,-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
				}
			if (EnableVias && (Detailgrad > 12)) union() { 
			}

		}
			if (EnablePolygones) {
			}
		if(EnableMeasures) union() // parts 
		{
		}
		if(EnableParts) union() // parts 
		{
			translate([39.688,18.098,board_thickness])rotate([0,0,90])MA03_1(Name="SV2",Value="",Library="con-lstb"); 
			translate([24.130,13.970,board_thickness])FE08(Name="SV5",Value="",Library="con-lsta"); 
			translate([24.130,26.670,board_thickness])FE08(Name="SV6",Value="",Library="con-lsta"); 
			translate([5.000,18.000,board_thickness])EDG_03(Name="SW1",Value="",Library="special"); 
		} //endunion() 
	} // // PCB whith parts and text  
	module MA03_1(Name="",Value="",Library="con-lstb")
	{
		// X1=-1.270, Y1=-3.810, X2=1.270, Y2=3.810, Ex=39.688, Ey=18.098, a=90
		if (HideAutogeneratedParts) {
			union(); } 
		else {
			rotate([0,0,270]) translate([-1.270,-3.810,0]) linear_extrude(10) square([2.540,7.620]); //Dummy Package
		}
	}
	module FE08(Name="",Value="",Library="con-lsta")
	{
		// X1=-10.160, Y1=-1.270, X2=10.160, Y2=1.270, Ex=24.130, Ey=13.970, a=
		if (HideAutogeneratedParts) {
			union(); } 
		else {
			translate([-10.160,-1.270,0]) linear_extrude(10) square([20.320,2.540]); //Dummy Package
		}
	}
	module EDG_03(Name="",Value="",Library="special")
	{
		// X1=-4.572, Y1=-4.953, X2=4.572, Y2=4.953, Ex=5.000, Ey=18.000, a=
		if (HideAutogeneratedParts) {
			union(); } 
		else {
			translate([-4.572,-4.953,0]) linear_extrude(10) square([9.144,9.906]); //Dummy Package
		}
	}
	include <C:\DEVELOP\Eagle.Bibliotheken\ulp\packages.scad>;

	include <packages.scad>;

} // end module


module EaglePad(size,roundness,$fn=$fn) 
{
 	function bogen(point=[0,0], r = 1 ,phase = 0, winkel = 90, $fn=$fn) = [let(num=abs($fn*winkel/360)) for (i=[0:num], x=i*winkel/num) [point[0]+r*cos(x+phase),point[1]+r*sin(x+phase)]]; 
	r = ((size[0] < size[1]) ? size[0] / 2: size[1] / 2) * roundness / 100;
	dim = [size[0] / 2 - r, size[1] / 2 - r];
	if ((size[0] == size[1]) && (roundness == 100))
	{
		circle(r);
	}
	else
	{
		polygon(concat(bogen(point=[-dim[0],-dim[1]], r = r, phase = 180, $fn=$fn ), bogen(point=[dim[0],-dim[1]], r = r, phase = 270, $fn=$fn ), bogen(point=[dim[0],dim[1]], r = r, phase = 0, $fn=$fn ), bogen(point=[-dim[0],dim[1]], r = r, phase = 90, $fn=$fn )));
	}
}

module Measure(Pos1,Pos2,Pos3, dtype, atext) 
{
 	
	Rotation  = [0,0,0];
	Mirroring = [0,0,0];
	function RotateX(x,y, x0, y0, a) = let (r = (x - x0)*cos(a) - (y - y0)*sin(a) + x0) r;
	function RotateY(x,y, x0, y0, a) = let (r = (x - x0)*sin(a) + (y - y0)*cos(a) + y0) r;
	color("Black") {
	if ((dtype > 0) && (dtype < 3))
	{
		if (((dtype == 1) && (Pos1[0] != Pos2[0])) || (Pos1[1] == Pos2[1])) // Horrizontal 
		{
		  angle = (Pos1[1] > Pos3[1]) ? -90 : 90;
		  signum = (Pos1[0] < Pos2[0]) ? 1 : -1;
		  height1 = abs(Pos3[1]-Pos1[1]);
		  height2 = abs(Pos3[1]-Pos2[1]);
		  translate([Pos1[0],Pos1[1],0]) rotate([0,90,angle]) cylinder(height1+1.2,0.1,0.1);
		  translate([Pos2[0],Pos2[1],0]) rotate([0,90,angle]) cylinder(height2+1.2,0.1,0.1);
		  Pos1Arrow = [Pos1[0], Pos3[1]];
		  Pos2Arrow = [Pos2[0], Pos3[1]];
		  lenght = abs(Pos2[0] - Pos1[0]);
		  InvertArrow = (lenght > 12) ? signum : -signum;
		  translate(Pos1Arrow)  rotate([0,90,angle+InvertArrow*90]) cylinder(2.5,0,0.5);
		  translate(Pos2Arrow)  rotate([0,90,angle-InvertArrow*90]) cylinder(2.5,0,0.5);
		  translate(Pos1Arrow)  rotate([0,90,angle+signum*90]) cylinder(lenght ,0.1,0.1);
		  if (InvertArrow==signum)
		  {
		    translate([Pos3[0],Pos3[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]-abs(angle)+90]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([0,0.3]) text(atext, font = "Liberation Sans", halign = "center" , size = 2);
		  }
		  else
		  {  
		    displacement = (signum >=0) ? 7 : lenght+7;
		    translate([Pos1[0],Pos3[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]+(angle-90)]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([displacement,0.3]) text(atext, font = "Liberation Sans", halign = "center", size = 2);
		    if (signum>=0)
		    {
		      translate(Pos1Arrow)  rotate([0,90,angle-signum*90]) cylinder(12 ,0.1,0.1);
		    }
		    else 
		    {
		   	  translate(Pos2Arrow)  rotate([0,90,180+angle-signum*90]) cylinder(12 ,0.1,0.1);
		    }
		  }
		} 
		else if ((dtype == 2) || (Pos1[0] == Pos2[0])) // Vertikal 
		{
		  angle = (Pos1[0] > Pos3[0]) ? 180 : 0;
		  signum = (Pos1[0] > Pos2[0]) ? 1 : -1;
		  height1 = abs(Pos3[0]-Pos1[0]);
		  height2 = abs(Pos3[0]-Pos2[0]);
		  translate([Pos1[0],Pos1[1],0]) rotate([0,90,angle]) cylinder(height1+1.2,0.1,0.1);
		  translate([Pos2[0],Pos2[1],0]) rotate([0,90,angle]) cylinder(height2+1.2,0.1,0.1);
		  Pos1Arrow = [Pos3[0], Pos1[1]];
		  Pos2Arrow = [Pos3[0], Pos2[1]];
		  lenght = abs(Pos2[1] -Pos1[1]);
		  InvertArrow = (lenght > 12) ? signum : -signum;
		  translate(Pos1Arrow)  rotate([0,90,angle+InvertArrow*90]) cylinder(2.5,0,0.5);
		  translate(Pos2Arrow)  rotate([0,90,angle-InvertArrow*90]) cylinder(2.5,0,0.5);
		  translate(Pos1Arrow)  rotate([0,90,angle+signum*90]) cylinder(lenght ,0.1,0.1);
		  if (InvertArrow==signum)
		  {
		    translate([Pos3[0],Pos3[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]+abs(angle-90)]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([0,0.3]) text(atext, font = "Liberation Sans", halign = "center" , size = 2);
		  }
		  else
		  {  
		    displacement = (signum >=0) ? 7 : lenght+7;
		    translate([Pos3[0],Pos1[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]+(angle-90)]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([displacement,0.3]) text(atext, font = "Liberation Sans", halign = "center", size = 2);
		    if (signum>=0)
		    {
		      translate(Pos1Arrow)  rotate([0,90,angle-signum*90]) cylinder(12 ,0.1,0.1);
		    }
		    else 
		    {
		   	  translate(Pos2Arrow)  rotate([0,90,180+angle-signum*90]) cylinder(12 ,0.1,0.1);
		    }
		  }
		}
	}
	else // dtype 0 parallel
	{
		Pos4   = [Pos1[0]+(Pos2[0] - Pos1[0])/2, Pos1[1]+(Pos2[1]-Pos1[1])/2]; // Lot
		angle  = atan2(Pos3[1]-Pos4[1],Pos3[0]-Pos4[0]);
		angle2 = atan2(Pos1[1]-Pos2[1],Pos1[0]-Pos2[0]);
		signum = sign(RotateY(Pos3[0], Pos3[1], Pos1[0], Pos1[1], -angle2) - Pos1[1]);
		height = sqrt(pow(Pos3[0]-Pos4[0],2)+pow(Pos3[1]-Pos4[1],2));
		translate([Pos1[0],Pos1[1],0]) rotate([0,90,angle]) cylinder(height+1.2,0.1,0.1);
		translate([Pos2[0],Pos2[1],0]) rotate([0,90,angle]) cylinder(height+1.2,0.1,0.1);
		Pos1Arrow = [Pos1[0] + (Pos3[0]-Pos4[0]), Pos1[1] + (Pos3[1]-Pos4[1])];
		Pos2Arrow = [Pos2[0] + (Pos3[0]-Pos4[0]), Pos2[1] + (Pos3[1]-Pos4[1])];
		lenght = sqrt(pow(Pos1Arrow[0]-Pos2Arrow[0],2)+pow(Pos1Arrow[1]-Pos2Arrow[1],2));
		InvertArrow = (lenght > 12) ? signum : -signum;
		translate(Pos1Arrow)  rotate([0,90,angle+InvertArrow*90]) cylinder(2.5,0,0.5);
		translate(Pos2Arrow)  rotate([0,90,angle-InvertArrow*90]) cylinder(2.5,0,0.5);
		translate(Pos1Arrow)  rotate([0,90,angle+signum*90]) cylinder(lenght ,0.1,0.1);
		if (InvertArrow==signum)
		{
			translate([Pos3[0],Pos3[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]+(angle-90)]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([0,0.3]) text(atext, font = "Liberation Sans", halign = "center", size = 2);
		}
		else
		{
			displacement = (signum >=0) ? 7 : lenght+7;
			translate([Pos1[0]+Pos3[0]-Pos4[0],Pos1[1]+Pos3[1]-Pos4[1],0]) rotate([Rotation[0],Rotation[1],Rotation[2]+(angle-90)]) linear_extrude(0.05) mirror([Mirroring[0],Mirroring[1],Mirroring[2]]) translate([displacement,0.3]) text(atext, font = "Liberation Sans", halign = "center", size = 2);
			if (signum>=0)
			{
				translate(Pos1Arrow)  rotate([0,90,angle-signum*90]) cylinder(12 ,0.1,0.1);
			}
			else 
			{
				translate(Pos2Arrow)  rotate([0,90,180+angle-signum*90]) cylinder(12 ,0.1,0.1);
			}
		}
	}
	}
}
Keyes_4988(); //Show module
//Created by generate-scad.ulp version 1.6
