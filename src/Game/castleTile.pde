import java.util.*;
class CastleTile extends Tile
{
  String landscape = "castle";
 
  public CastleTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/castle.jpg");
  }  
}
