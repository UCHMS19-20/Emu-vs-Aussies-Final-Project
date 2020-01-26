import java.util.*;
class TilePlain extends Tile
{ 
  public TilePlain(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/plain.jpg");
  }
}
