
class Powerbar
  {
    String name;
    int xpos;
    int ypos;
    int xsize;
    int ysize;
    int life;
    int c;
    boolean isleftside;
    
    int namexpos;
    float namexposgap = .03;
    
    Powerbar(String tempName, int tempXpos, int tempYpos, int tempXsize, int tempYsize, int tempLife, int tempC, boolean tempIsleftside)
      {
        name = tempName;
        xpos = tempXpos;
        ypos = tempYpos;
        xsize = tempXsize;
        ysize = tempYsize;
        life = tempLife;
        c = tempC;
        isleftside = tempIsleftside;
      }
      
    void display()
      {
        xpos = width / 50;
        ypos = height / 50;
        xsize = (width - (3 * xpos)) / 2;
        ysize = height / 25;
        namexpos = xpos + int((namexposgap * xsize)); 
        if(isleftside == false)
          {
            xpos = (width / 2) + (xpos / 2);
            namexpos = xpos + xsize - int(textWidth(name)) - int((namexposgap * xsize));
          }
        stroke(0);
        fill(c,c,c);
        rect(xpos, ypos, xsize, ysize);
        lifedisplay();
        textSize(ysize * 0.9);
        fill(0,0,0);
        text(name,namexpos, (ypos + ysize) - (0.1 * ysize));
      }
      
    void lifedisplay()
      {
        int lifedirection = -1;
        int lifepos = xpos + xsize;
        if(isleftside == false)
          {
            lifedirection = 1;
            lifepos = xpos;
          }
        fill(0,255,0);
        rect(lifepos,ypos,int(lifedirection * life * xsize) / 100,ysize);
      }
  }