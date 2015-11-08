
void InfoOverlay()
  {
    PowerbarLeft.display();
    PowerbarRight.display();
    drawFloor();
    GameCharacter01.display();
    Button01.display();
    Button02.display();
    Button03.display();
    Button04.display();
  }
  
void drawFloor()
  {
    stroke(0);
    line(0,Floor,width,Floor);
  }