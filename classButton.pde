
class Button
  {
    String name;
    int xpos;
    int ypos;
    int xsize;
    int ysize;
    boolean clicked;
    int cR;
    int cG;
    int cB;
    
    Button(String tempName, int tempXpos, int tempYpos, int tempXsize, int tempYsize, boolean tempClicked, int tempCR, int tempCG, int tempCB)
      {
        name = tempName;
        xpos = tempXpos;
        ypos = tempYpos;
        xsize = tempXsize;
        ysize = tempYsize;
        clicked = tempClicked;
        cR = tempCR;
        cG = tempCG;
        cB = tempCB;
      }
      
    void display()
      {
        stroke(0);
        fill(cR,cG,cB);
        rect(xpos, ypos, xsize, ysize);
      }
      
    void checkifclicked()
      {
        if(mouseX >= xpos && mouseX <= xpos + xsize && mouseY >= ypos && mouseY <= ypos + ysize)
          {
            clicked = true;
            cR = int(random(50,255));
            cG = int(random(50,255));
            cB = int(random(50,255));
          }
      }
      
  }