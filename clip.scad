$fn=190;
$roll_diam=70;
$clip_width=9.5;
$clip_length=16;
$clip_height=7.8;
$fin_width=0.8;
$top_height=1.5;
intersection() {
    difference() {
        intersection() {

        translate([-($roll_diam/2)+$clip_height, 0, 0])
        cylinder($clip_width, $roll_diam/2, $roll_diam/2);

        translate([0, -($clip_length/2), 0])
        cube([$clip_height,$clip_length,$clip_width]);    
        }
        
        translate([-($roll_diam/2)+$clip_height-$top_height, 0, $fin_width])
        cylinder($clip_width-($fin_width*2), $roll_diam/2, $roll_diam/2);

    }
  translate([8, 0, 0])
  cylinder(10, $clip_height+2, $clip_height+2);
}