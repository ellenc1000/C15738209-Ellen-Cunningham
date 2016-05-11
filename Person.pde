class Person extends GameObject
{ 

  Person(float x, float y)
  {
    super(x, y);
  }

  void update()
  {
    theta = PI;

    //    forward.x = sin(theta);
    //    forward.y = - cos(theta);
    //    pos.add(forward);
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(255, 0, 255);
    fill(255);
    rect(-10, -10, 20, 60);//body
    ellipse(0, 0, 30, 30);//head
    line(-10, 40, -10, 80);//right leg
    line(10, 40, 10, 80);//left leg
    line(-10, 10, -15, 40);//right arm
    line(10, 10, 15, 40);//left arm
    noStroke();
    popMatrix();
  }
}

