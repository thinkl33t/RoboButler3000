use <motor.scad>;
use <battery.scad>;
use <wheel.scad>;

module box(length, wallwidth=3)
{
	color("grey") difference()
	{
		cube([20, 20, length], center=true);
		cube([20-wallwidth-wallwidth, 20-wallwidth-wallwidth, length+1], center=true);
	}
}

translate([-130, 0, 0])	rotate([-90, 0, 0]) translate([0,-77,0]) motor_l();
translate([130, 0, 0])	rotate([-90, 0, 0]) translate([0,-77,0]) motor_r();

translate([-180, 0, 0]) rotate([0, -90, 0]) wheel();
translate([180, 0, 0]) rotate([0, 90, 0]) wheel();

translate([-70, -600, -90]) rotate([0, 90, 0]) wheel(80, 50, 2, 20);

translate([220,-300,40]) rotate([0,0,90]) battery();
translate([-220,-300,40]) rotate([0,0,90]) battery();

translate([130+35,-57,50]) box(200);
translate([130-35,-57,50]) box(200);
translate([-130+35,-57,50]) box(200);
translate([-130-35,-57,50]) box(200);
translate([0,-57,-60]) rotate([0,90,0]) box(130*2+35+35+20);
translate([0,-57,160]) rotate([0,90,0]) box(130*2+35+35+20);

translate([0,-57-160,-80]) rotate([0,90,0]) box(550);
translate([0,-57-310,-80]) rotate([0,90,0]) box(550);

translate([-165,-365,-60]) rotate([90,0,0]) box(600);
translate([165,-365,-60]) rotate([90,0,0]) box(600);
translate([-165,-365,160]) rotate([90,0,0]) box(600);
translate([165,-365,160]) rotate([90,0,0]) box(600);

translate([130+35,-440-57,50]) box(200);
translate([-130-35,-440-57,50]) box(200);

translate([130+35,-600-57,50]) box(200);
translate([-130-35,-600-57,50]) box(200);

translate([0,-440-57,-60]) rotate([0,90,0]) box(130*2+35+35-20);
translate([0,-440-57,160]) rotate([0,90,0]) box(130*2+35+35-20);
translate([0,-600-57,160]) rotate([0,90,0]) box(130*2+35+35-20);

translate([0,-270,65]) color("yellow") cube([300, 400, 260], center=true);
