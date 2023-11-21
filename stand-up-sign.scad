difference(){
    translate([0,3,0.5])
    stand();
    
    translate([0,2,5.2])
    rotate([70,0,0])
    scale([1, 1.05, 1.1])
    sign();
}

//translate([0,2,5])
//rotate([70,0,0])
translate([0,20,0.5])
sign();

translate([-23.5,21,1])
linear_extrude(0.4)
text("Pay what you want!", size=4);

translate([-22,16.5,1])
linear_extrude(0.4)
text("Einkauf: ~1,20€/Flasche", size=3);


module sign(){
    difference(){
        cube([50,10,1], center=true); //main body
        union(){
            translate([-20,-4.5,0]) cube([10,1,1], center=true);
            translate([20,-4.5,0]) cube([10,1,1], center=true);
            }
        
    }
}
    
module stand(){
    cube([50,10,1], center=true);
    }