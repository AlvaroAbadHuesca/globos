PImage cara;
class Globo
{
  color c;
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(0,255),
             random(0,255),
             random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      strokeWeight(3);
      ellipse(x,y,100,300);
      image(cara, x - 50, y - 300, 150, 200);
      ellipse(x - 50,y + 150,100,100);
      ellipse(x + 50,y + 150,100,100);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(900,700);
  globos = new ArrayList<Globo>();  
  cara = loadImage("eva.png");
}

void draw()
{
  background(100,200,255);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
