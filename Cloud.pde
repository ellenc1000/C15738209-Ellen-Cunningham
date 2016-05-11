class Cloud extends GameObject
{

  float theta;

  float w, halfW;

  Cloud (float x, float y, float speed)
  {
    super(x, y);
  }

  void update ()
  {
    theta = -HALF_PI;//direction of cloud movement

    forward.x = sin(theta);
    forward.y = -cos(theta);

    if ((pos.x > 0 - 40))
    {
      pos.add(forward);//cloud movement
    }
    if ((pos.x < 0 - 30))
    {
      pos.x = width + 60;//cloud movement
    }
    
    
    if ((pos.y < 300)&& (pos.y > 100))//height determining speed to create depth
    {
      pos.add(forward);
      pos.add(forward);
      pos.add(forward);
      pos.add(forward);
    }
    if ((pos.y < 100) && (pos.y > 50))
    {
      pos.add(forward);
      pos.add(forward);
    }
    if ((pos.y < 50))
    {
      pos.add(forward);
    }
  }


  void render ()//cloud
  {

    pushMatrix();
    translate(pos.x, pos.y);
    fill(255);
    stroke(0, 0, 255);
    noStroke();
    ellipse(0, 0, 30, 40);
    ellipse(-20, 0, 20, 30);
    ellipse(20, 0, 20, 30);
    ellipse(-30, 0, 10, 10);
    ellipse(30, 0, 10, 10);
    noStroke();
    println(pos.x);
    popMatrix();
  }
}

