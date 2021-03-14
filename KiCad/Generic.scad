// Generated case design for ../ESP32-OTA/KiCad/Generic.kicad_pcb
// By https://github.com/revk/PCBCase
// title:	Generic ESP32 with GPIO
// date:	2021-03-10
// rev:	2.000000
// comment:	www.me.uk
// comment:	@TheRealRevK
//

// Globals
margin=0.800000;
casebase=5.000000;
casetop=5.000000;
casewall=3.000000;
fit=0.200000;
edge=2.000000;
pcbthickness=1.600000;
pcbwidth=19.000000;
pcblength=29.100000;

// PCB
module pcb(){linear_extrude(height=1.600000)polygon([[0.000000,29.100000],[19.000000,29.000000],[19.000000,0.000000],[0.000000,0.000000]]);}

// Populated PCB
module board(){
	pcb();
// Missing Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical
translate([13.870000,15.080000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m1(); // RevK:D24V5F3-NoSHDN
translate([15.730000,3.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([13.230000,3.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([10.730000,3.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([8.230000,3.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([5.730000,3.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([-0.200000,18.800000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m3(); // RevK:USC16-TR-Round
translate([10.850000,12.250000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m4(); // Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm
translate([9.500000,19.450000,1.600000])m5(); // RF_Module:ESP32-WROOM-32
translate([2.650000,25.250000,0.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([2.650000,27.700000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m2(); // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
translate([3.230000,7.100000,1.600000])m6(); // Connector_Molex:Molex_SPOX_5268-06A_1x06_P2.50mm_Horizontal
}

module m1()
{ // RevK:D24V5F3-NoSHDN
translate([-5.1,0,0])cube([10.2,12.7,2.82]);

}

module m2()
{ // Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder
cube([4.9,2.23,1.5],center=true);
}

module m3()
{ // RevK:USC16-TR-Round
translate([-4.47,-0.49,0])
{
	translate([1.63,0,1.63])
	rotate([-90,0,0])
	hull()
	{
		cylinder(d=3.26,h=7.75,$fn=24);
		translate([5.68,0,0])
		cylinder(d=3.26,h=7.75,$fn=24);
	}
	translate([0,6.65,0])cube([8.94,1.1,1.63]);
	translate([0,2.2,0])cube([8.94,1.6,1.63]);
	// Plug
	translate([1.63,-20,1.63])
	rotate([-90,0,0])
	hull()
	{
		cylinder(d=2.5,h=21,$fn=24);
		translate([5.68,0,0])
		cylinder(d=2.5,h=21,$fn=24);
	}
	translate([1.63,-22.5,1.63])
	rotate([-90,0,0])
	hull()
	{
		cylinder(d=7,h=21,$fn=24);
		translate([5.68,0,0])
		cylinder(d=7,h=21,$fn=24);
	}
}

}

module m4()
{ // Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm
cube([4,4,1],center=true);
}

module m5()
{ // RF_Module:ESP32-WROOM-32
translate([-9,-9.75,0])
{
	cube([18,25.50,0.80]);
	translate([1.1,1.05,0])cube([15.80,17.60,3.10]);
	translate([-0.5,0.865,0])cube([19,17.4,0.8]);
	translate([2.65,-0.5,0])cube([12.7,2,0.8]);

}
}

module m6()
{ // Connector_Molex:Molex_SPOX_5268-06A_1x06_P2.50mm_Horizontal
translate([-2.5,-6.6,0])
{
	cube([17.4,4.9,4.9]);
	cube([17.4,5.9,3.9]);
	hull()
	{
		cube([17.4,7.4,1]);
		cube([17.4,7.9,0.5]);
	}
	translate([1,6,-3.5])cube([15.4,1.2,6]);
	// Plug
	translate([0.5,-20,0.7])cube([16.4,21,3.9]);
	translate([0,-23,0])cube([17.4,20,4.9]);
}

}

height=casebase+pcbthickness+casetop;

module boardf()
{ // This is the board, but stretched up to make a push out in from the front
	render()
	{
		intersection()
		{
			translate([-casewall-1,-casewall-1,-casebase-1]) cube([pcbwidth+casewall*2+2,pcblength+casewall*2+2,height+2]);
			minkowski()
			{
				board();
				cylinder(h=height+100,d=margin,$fn=8);
			}
		}
	}
}

module boardb()
{ // This is the board, but stretched down to make a push out in from the back
	render()
	{
		intersection()
		{
			translate([-casewall-1,-casewall-1,-casebase-1]) cube([pcbwidth+casewall*2+2,pcblength+casewall*2+2,height+2]);
			minkowski()
			{
				board();
				translate([0,0,-height-100])
				cylinder(h=height+100,d=margin,$fn=8);
			}
		}
	}
}

module pyramid()
{ // A pyramid
 polyhedron(points=[[0,0,0],[-height,-height,height],[-height,height,height],[height,height,height],[height,-height,height]],faces=[[0,1,2],[0,2,3],[0,3,4],[0,4,1],[4,3,2,1]]);
}

module cutf()
{ // This cut up from base in the wall
	intersection()
	{
		boardf();
		difference()
		{
			translate([-casewall+0.01,-casewall+0.01,-casebase+0.01])cube([pcbwidth+casewall*2-0.02,pcblength+casewall*2-0.02,casebase+pcbthickness]);
			translate([-0.01-margin/2,-0.01-margin/2,-casebase-1])cube([pcbwidth+margin+0.02,pcblength+margin+0.02,height+2]);
			boardb();
		}
	}
}

module cutb()
{ // The cut down from top in the wall
	intersection()
	{
		boardb();
		difference()
		{
			translate([-casewall+0.01,-casewall+0.01,0.01])cube([pcbwidth+casewall*2-0.02,pcblength+casewall*2-0.02,casetop+pcbthickness]);
			translate([-0.01-margin/2,-0.01-margin/2,-casebase-1])cube([pcbwidth+margin+0.02,pcblength+margin+0.02,height+2]);
			boardf();
		}
	}
}

module cutpf()
{ // the push up but pyramid
	render()
	intersection()
	{
		minkowski()
		{
			pyramid();
			cutf();
		}
		difference()
		{
			translate([-casewall-0.01,-casewall-0.01,-casebase-0.01])cube([pcbwidth+casewall*2+0.02,pcblength+casewall*2+0.02,casebase+pcbthickness+0.02]);
			translate([0.01-margin/2,0.01-margin/2,-casebase-1])cube([pcbwidth+margin-0.02,pcblength+margin+0.02,height+2]);
			board();
		}
		translate([-casewall,-casewall,-casebase])case();
	}
}

module cutpb()
{ // the push down but pyramid
	render()
	intersection()
	{
		minkowski()
		{
			scale([1,1,-1])pyramid();
			cutb();
		}
		difference()
		{
			translate([-casewall-0.01,-casewall-0.01,-0.01])cube([pcbwidth+casewall*2+0.02,pcblength+casewall*2+0.02,casetop+pcbthickness+0.02]);
			translate([0.01-margin/2,0.01-margin/2,-casebase-1])cube([pcbwidth+margin-0.02,pcblength+margin+0.02,height+2]);
			board();
		}
		translate([-casewall,-casewall,-casebase])case();
	}
}


module case()
{ // The basic case
	hull()
	{
		translate([edge,0,edge])
		cube([pcbwidth+casewall*2-edge*2,pcblength+casewall*2,height-edge*2]);
		translate([0,edge,edge])
		cube([pcbwidth+casewall*2,pcblength+casewall*2-edge*2,height-edge*2]);
		translate([edge,edge,0])
		cube([pcbwidth+casewall*2-edge*2,pcblength+casewall*2-edge*2,height]);
	}
}

module base()
{ // The base
	difference()
	{
		case();
		translate([-1,-1,casebase+pcbthickness])cube([pcbwidth+casewall*2+2,pcblength+casewall*2+2,casetop+1]);
		translate([casewall/2-fit/2-margin/4,casewall/2-fit/2-margin/4,casebase])cube([pcbwidth+casewall+fit+margin/2,pcblength+casewall+fit+margin/2,casetop+pcbthickness+1]);
		translate([casewall,casewall,casebase-fit])boardf();
		translate([casewall,casewall,casebase])cutpf();
	}
	translate([casewall,casewall,casebase])cutpb();
}

module top()
{
	translate([0,pcblength+casewall*2,height])rotate([180,0,0])
	{
		difference()
		{
			case();
			difference()
			{
				translate([-1,-1,-1])cube([pcbwidth+casewall*2+2,pcblength+casewall*2+2,casebase+pcbthickness+1]);
				translate([casewall/2-margin/4+fit/2,casewall/2-margin/4+fit/2,casebase])cube([pcbwidth+casewall+margin/2-fit,pcblength+casewall+margin/2-fit,casetop+pcbthickness+1]);
			}
			translate([casewall,casewall,casebase+fit])boardb();
			translate([casewall,casewall,casebase])cutpb();
		}
		translate([casewall,casewall,casebase])cutpf();
	}
}

module test()
{
	board();
	translate([1*(pcbwidth+casewall+10),0,0])boardf();
	translate([2*(pcbwidth+casewall+10),0,0])boardb();
	translate([3*(pcbwidth+casewall+10),0,0])cutpf();
	translate([4*(pcbwidth+casewall+10),0,0])cutpb();
	translate([5*(pcbwidth+casewall+10),0,0])cutf();
	translate([6*(pcbwidth+casewall+10),0,0])cutb();
	translate([7*(pcbwidth+casewall+10),0,0])case();
	translate([8*(pcbwidth+casewall+10),0,0])base();
	translate([9*(pcbwidth+casewall+10),0,0])top();
}

module parts()
{
	base();
	translate([pcbwidth+casewall+10,0,0])top();
}

//test();
parts();
