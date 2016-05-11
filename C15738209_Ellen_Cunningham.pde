//Ellen Cunningham C15738209 - Exam 

boolean bombDrop = false;
boolean getBomb = false;
boolean remove = false;
boolean bombExists = false;

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

Plane plane;

Person person;

ArrayList<Cloud> clouds = new ArrayList<Cloud>();

void setup()
{
  size(600, 600);
  background (0, 100, 255);//sky

  plane = new Plane(0, 120);
  person = new Person(20, 500);

  for (int i = 0; i < 5; i ++)
  {
    Cloud cloud = new Cloud(random(0, 650), random(20, 200), random(10, 100));
    clouds.add(cloud);
  }
}

ArrayList<Bomb> bombs = new ArrayList<Bomb>(1); 

void draw()
{
  background (0, 100, 255);//sky

  noStroke();
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);//ground

  for (int i = clouds.size ()- 1; i >= 0; i --)
  {
    Cloud cloud = clouds.get(i);
    cloud.update();
    cloud.render();
  }
  
  for (int i = bombs.size () -1; i >= 0; i --)
  {
    Bomb b = bombs.get(i);
    if (bombDrop)
    {
      b.update();
      b.render();
    }
    if (bombExists)
    {
      if (PVector.dist(b.pos, person.pos) < person.halfW)
      {
        bombExists = false;
        getBomb=false;
        //bombs.remove(this);
        bombDrop = false;
        bombs.remove(i);
      }
      
      if(bombs.size() > 1)
      {
      bombs.remove(i);
      }
    }
  }

  plane.update();
  plane.render();

  person.render();
  person.update();

  println("bombDrop = " + bombDrop);
  println("getBomb = " + getBomb);
  println("bombExists = " + bombExists);
  println("bombs = " + bombs.size());
}

