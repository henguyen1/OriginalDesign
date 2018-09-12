void setup()
{
  background(0);
  size(900, 900);
}
void draw()
{
  stars();
  uranus();
  sun();
}

//numStars will regulate how many stars there will be in the sky
int numStars = 10;
void stars()
{
  while (numStars < 2500) {
    numStars = numStars + 1;
    float x = random(900);
    float y = random(900);
    //float r g b will decide colors for stars
    float r = random(255);
    float g = random(255);
    float b = random(255);
    fill(r, g, b);
    ellipse(x, y, 4, 4);
  }
}
//this will draw Uranus because who cares about the other planets
void uranus()
{
  fill(173, 236, 255);
  noStroke();
  ellipse(600, 600, 400, 400);
  //create the ring
  noFill();
  stroke(255);
  strokeWeight(3);
  bezier(550, 405, 550, 100, 750, 990, 650, 795);
  //Creating the shadow
  noStroke();
  fill(0, 0, 0, 200);
  ellipse(625, 625, 415, 415);
}
//int grad and sizeSun will set up the grandient and size of the sun
int grad = 1;
int sizeSun = 100;
void sun()
{
  noStroke();
  while (sizeSun > 0)
  {

    fill(grad+50, grad, 25);
    ellipse(200, 200, sizeSun, sizeSun);
    grad = grad + 7;
    sizeSun = sizeSun - 1;
  }
}




