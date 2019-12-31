import java.util.*;
class whiteTile extends Tile
{
  String landscape = "whiteTile";
 
  public whiteTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("white.jpg");
  }
  
  public void tempPrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
