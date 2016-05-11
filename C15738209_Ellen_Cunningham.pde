//Ellen Cunningham C15738209 - Exam 
Plane plane;

void setup()
{
size(600, 600);
background (0, 100, 255);//sky

plane = new Plane(0, 120);
}

void draw()
{
background (0, 100, 255);//sky

noStroke();
fill(0, 255, 0);
rect(0, height/2, width, height/2);//ground

plane.update();
plane.render();

}
