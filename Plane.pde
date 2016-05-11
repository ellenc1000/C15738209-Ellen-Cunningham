
class Plane extends GameObject
{ 

  int maxHealth = 100;
  int health = maxHealth;
  float speed = 10.0f;

  Plane (float x, float y)
  {
    super(x, y);
  }

  void update()
  {
    theta = HALF_PI;

    forward.x = sin(theta);
    forward.y = - cos(theta);
    pos.add(forward); 
    
     if ((pos.x < width))
    {
      pos.add(forward);
    }
    if ((pos.x > width + 10))
    {
      pos.x = -100;
    }
    
    
  }

void render ()
{
  pushMatrix();
  translate(pos.x, pos.y);
  //rectMode(CENTER);

  fill(100, 100, 100);

  rect(0, 0, 100, 50);

  popMatrix();
}
}


