import java.util.*;
class DesertTile extends Tile
{
  String landscape = "desertTile";

  public DesertTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/desert.jpg");
  }
  

  
}
