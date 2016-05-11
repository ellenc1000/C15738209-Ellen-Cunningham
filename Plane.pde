
class Plane extends GameObject
{ 
  float speed = 10.0f;

  Plane (float x, float y)
  {
    super(x, y);
  }

  void update()
  {
    theta = HALF_PI;//plane direction

    forward.x = sin(theta);
    forward.y = - cos(theta);

    if ((pos.x < width + 40))//plane movement
    {
      pos.add(forward);
    }
    if ((pos.x > width + 10))//reset plane
    {
      pos.x = -200;
    }
  }

  void render ()
  {
    pushMatrix();

    translate(pos.x, pos.y);

    fill(100, 100, 100);

    rect(0, 0, 150, 20);//main body
    rect(60, -30, 30, 100);//wings
    triangle(0, 20, 50, 20, 0, -20);//back of plane
    triangle(150, 0, 150, 20, 170, 20);//nose
    fill(0);
    ellipse(45, 10, 5, 8);
    ellipse(55, 10, 5, 8);
    ellipse(65, 10, 5, 8);
    ellipse(75, 10, 5, 8);
    ellipse(85, 10, 5, 8);
    ellipse(95, 10, 5, 8);
    ellipse(105, 10, 5, 8);
    ellipse(115, 10, 5, 8);


    //println(pos.x);

    popMatrix();
  }
}

