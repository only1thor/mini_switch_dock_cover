
$fn=24;
rad=9.8/2;
height=47.8;
width=55.5;

module full_case(x){
	rotate([-90,0,0])
	hull(){
		cylinder(h=height,r=rad*x);
		translate([width-rad*2,0,0])
		cylinder(h=height,r=rad*x);
	}
}

difference(){
	full_case(1.1);
	translate([-rad/2,0,rad/4])
	cube([width-rad,height,rad]);
	translate([width/4,height/4,-rad*2])
	cube(20);
	full_case(1);
}