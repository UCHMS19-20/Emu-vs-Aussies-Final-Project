import java.util.*;
class PlainTile extends Tile
{
  String landscape = "plainTile";
 
  public PlainTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/plain.jpg");
  }
  
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
