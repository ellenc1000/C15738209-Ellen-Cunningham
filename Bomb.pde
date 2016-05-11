class Bomb extends GameObject
{ 

  float speed = 10.0f;

  Bomb(float x, float y)
  {
    super(x, y);
  }

  void update()
  {
    theta = PI;

if((pos.y < 370))
{
    forward.x = sin(theta);
    forward.y = - cos(theta);
    pos.add(forward); 
}

    forward.x = sin(theta);
    forward.y = -cos(theta);
    velocity.x = forward.x;
   //velocity.y = forward.y;    
    velocity.mult(speed);    
    pos.add(velocity);
  
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(255, 0, 0);
    stroke(255, 0, 100);
    rect(0, 0, 20, 20);
    fill(0);
    noStroke();
    println(pos.y);
    popMatrix();
  }
}

