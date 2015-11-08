
int ellipseSizeX = 5;
int ellipseSizeY = 5;
Button Button01;
Button Button02;
Button Button03;
Button Button04;
Powerbar PowerbarLeft;
Powerbar PowerbarRight;
GameCharacter GameCharacter01;

int Floor;

void setup()
  {
    //size(1200,700);
    //size(765,345);
    fullScreen();
    Button01 = new Button("Button01",50,100,50,20,false,255,0,0);
    Button02 = new Button("Button02",50,150,50,20,false,0,255,0);
    Button03 = new Button("Button03",50,200,50,20,false,0,0,255);
    Button04 = new Button("Button04",50,250,50,20,false,50,50,50);
    PowerbarLeft = new Powerbar("Character 01",0,0,0,0,75,255,true);
    PowerbarRight = new Powerbar("Character 02",0,0,0,0,98,255,false);
    GameCharacter01 = new GameCharacter("Johnson Character 01",200,500,50,100,213,177,4);
    Floor = int(height * 0.95);
  }
  
void draw()
  {
    background(244,229,185);
    InfoOverlay();

    fill(255);
    ellipse(mouseX,mouseY,ellipseSizeX,ellipseSizeY);
  }
 
void mouseClicked()
  {
    //ellipseSizeX += 5;
    //ellipseSizeY += 5;
    Button01.checkifclicked();
    Button02.checkifclicked();
    Button03.checkifclicked();
    Button04.checkifclicked();
  }