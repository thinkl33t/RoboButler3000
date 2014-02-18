module motor(dir="left")
{
	translate([0,-175/2,(-(94-80)/2)+34])rotate([90,0,0])color([0.3,0.3,0.3])cylinder(r=80/2, h=175, center=true);

	difference()
	{
		color("silver") hull()
		{
			translate([0,21.5+61.5,7]) rotate([0,90,0]) cylinder(r=80/2, h=90, center=true);
			translate([0,-56.5+61.5,42]) cube([90, 10, 10],center=true);
			translate([0,-56.5+61.5,-42]) cube([90, 10, 10],center=true);
			translate([0,56.5+61.5,-42]) cube([90, 10, 10],center=true);
		}
		
		for (x=[-35, 0, 35])
			for (y=[-53, 0, 53])
				translate([x,61.5+y,-43]) cylinder(r=5/2, h=10, center=true);
	}
	if (dir=="left")
	{
		color ("black") translate([1,16.5+61.5,2]) rotate([0,90,0]) cylinder(r=50/2, h=90, center=true);
		color ("grey") translate([-45,16.5+61.5,2]) rotate([0,90,0]) cylinder(r=16/2, h=90, center=true);
	}
	else
	{
		color ("black") translate([-1,16.5+61.5,2]) rotate([0,90,0]) cylinder(r=50/2, h=90, center=true);
		color ("grey") translate([45,16.5+61.5,2]) rotate([0,90,0]) cylinder(r=16/2, h=90, center=true);
	}
}

module motor_l()
{
	motor("left");
}

module motor_r()
{
	motor("right");
}

motor_r();
