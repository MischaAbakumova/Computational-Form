// just draws a circle
var tiles = [];

function setup() {
  createCanvas(720, 720);
  noLoop();  // Run once and stop
  noStroke();
}

function draw() {
  background(0);

  for (var x = 0; x < 10; x++) {
    tiles[x] = []; // create nested array, or pain in the butt
    for (var y = 0; y <10; y++) {
      tiles[x][y] = round(random(1));
      if(tiles[x][y]==0){
      	fill(0);
      }else{fill(255,204,0);}

      rect(x*35, y*35, 15, 35); //top left corner
      rect(width-35-x*35, y*35, 15, 35); //top rigth
      rect(x*35,height-35-y*35, 15, 35); //bottom left
      rect(width-35-x*35, height-35-y*35, 15,35); //bottom right
    }
  }
}

function mousePressed(){
	redraw();
}

//http://p5js.org/examples/examples/Arrays_Array_2D.php used for 
//inspiration 
//and guidence. 