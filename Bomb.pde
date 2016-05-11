class Bomb extends GameObject
{ 

  int maxHealth = 100;
  int health = maxHealth;
  float speed = 10.0f;

  Bomb(float x, float y)
  {
    super(x, y);
  }

  void update()
  {
    theta = PI;

    forward.x = sin(theta);
    forward.y = - cos(theta);
    pos.add(forward); 
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
    popMatrix();
  }
}

