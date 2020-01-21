import java.util.*;
class FarmTile extends Tile
{
  String landscape = "farm";
 
  public FarmTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/farm.jpg");
  }  
}
