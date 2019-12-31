import java.util.*;
class mountainTile extends Tile
{
  String landscape = "mountainTile";
 
  public mountainTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("mountain.jpg");
  }
  
  public void tempPrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
