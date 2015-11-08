
class GameCharacter
  {
    String name;
    int xpos;
    int ypos;
    int xvel = 0;
    int yvel = 0;
    int xacc = 0;
    int yacc = 0;
    int xsize;
    int ysize;
    int cR;
    int cG;
    int cB;
    
    GameCharacter(String tempName, int tempXpos, int tempYpos, int tempXsize, int tempYsize, int tempCR, int tempCG, int tempCB)
      {
        name = tempName;
        xpos = tempXpos;
        ypos = tempYpos;
        xsize = tempXsize;
        ysize = tempYsize;
        cR = tempCR;
        cG = tempCG;
        cB = tempCB;
      }
      
    void display()
      {
        lookforbuttonpress();
        calcdynamics();
        stroke(0);
        fill(cR,cG,cB);
        rect(xpos, ypos, xsize, -ysize);
      }
      
    void lookforbuttonpress()
      {
        
        if (keyPressed == true)
          {
            if(keyCode == UP)
              {
                yvel -= 3;
              }
            if(keyCode == DOWN)
              {
                yvel += 3;
              }
            if(keyCode == LEFT)
              {
                xvel -= 3;
              }
            if(keyCode == RIGHT)
              {
                xvel += 3;
              }
            
          }
      }
      
    void calcdynamics()
      {
        xpos = xpos + xvel;
        xvel *= 0.9999;
        //xvel = xvel + xacc;
        ypos = ypos + yvel;
        yvel += 1;
        //yvel = yvel + yacc;
        if(ypos >= Floor)
          {
            ypos = Floor;
            yvel = 0;
          }
      }
      
  }