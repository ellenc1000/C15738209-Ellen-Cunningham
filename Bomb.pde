class Bomb extends GameObject
{ 

  float speed = 10.0f; 
  PVector acc;
  float deltaTime = 1.0f / 60.0f;
  PVector force;
  float mass;
  float gravity = 80;

  Bomb(float x, float y)
  {
    super(x, y);
  }

  void update()
  {

    theta = PI - QUARTER_PI/12;//direction of drop

    forward.x = sin(theta);
    forward.y = -cos(theta);
    velocity.x = forward.x; 
    velocity.mult(speed); 

    if ((pos.y < 500))//stop when reach certain height
    {
      pos.add(forward);
      pos.add(velocity);
    } else
    {
      getBomb =true;//tell person to go
    }
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

