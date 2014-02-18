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

translate([-330, -400, -90]) rotate([0, 90, 0]) wheel(80, 50, 2, 20);
translate([330, -400, -90]) rotate([0, -90, 0]) wheel(80, 50, 2, 20);

translate([42,50,40]) rotate([0,0,90]) battery();
translate([-42,50,40]) rotate([0,0,90]) battery();

translate([130+35,-57,50]) box(200);
translate([130-35,-57,50]) box(200);
translate([-130+35,-57,50]) box(200);
translate([-130-35,-57,50]) box(200);
translate([0,-57,-60]) rotate([0,90,0]) box(350);
translate([0,-57,160]) rotate([0,90,0]) box(350);

translate([165,-287.5,-60]) rotate([90,0,0]) box(440);
translate([-165,-287.5,-60]) rotate([90,0,0]) box(440);
translate([-165,-287.5,160]) rotate([90,0,0]) box(440);
translate([165,-287.5,160]) rotate([90,0,0]) box(440);

translate([130+35,-440-57,50]) box(200);
translate([-130-35,-440-57,50]) box(200);

translate([0,-440-57,-60]) rotate([0,90,0]) box(310);
translate([0,-440-57,160]) rotate([0,90,0]) box(310);

translate([0,-340-57,-60]) rotate([0,90,0]) box(310);
translate([0,-220-57,-60]) rotate([0,90,0]) box(310);
translate([0,-100-57,-60]) rotate([0,90,0]) box(310);

translate([0,-270,85]) color("yellow") cube([300, 400, 260], center=true);
