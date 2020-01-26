import java.util.*;
class TileEmuBase extends Tile
{
  public TileEmuBase(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/farm.jpg");
  }  
}
