import java.util.*;
class plainTile extends Tile
{
  String landscape = "plainTile";
 
  public plainTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("plain.jpg");
  }
  
  public void tempPrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
