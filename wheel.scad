module wheel_hub(sw=145, ar=70, rd=6, cd=70, ah=50)
{
	rd_mm=rd*25.4;
	difference()
	{
		cylinder(r=rd_mm/2, h=sw, center=true);	
		cylinder(r=rd_mm/2-5, h=sw+1, center=true);
	}
	difference()
	{
		translate([0,0,-rd_mm/2+5+cd]) cylinder(r=rd_mm/2, h=5, center=true);
		cylinder(r=ah/2, h=sw+1, center=true);	
	}
}

module wheel_tyre(sw=145, ar=70, rd=6, cd=70)
{
	rd_mm=rd*25.4;
	tr = (rd_mm/2)+(sw*(70/100));
	difference()
	{
		cylinder(r=tr, h=sw-1, center=true);	
		cylinder(r=rd_mm/2, h=sw+1, center=true);
	}
}

module wheel(sw=145, ar=70, rd=6, cd=70)
{
	translate([0,0,145/2])
	{
		color("silver") wheel_hub(sw, ar, rd, cd);
		color([0.3,0.3,0.3]) wheel_tyre(sw, ar, rd, cd);
	}
}


wheel(cd=30);
