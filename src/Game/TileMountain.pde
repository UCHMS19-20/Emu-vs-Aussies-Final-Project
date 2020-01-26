import java.util.*;
class TileMountain extends Tile
{
 
  public TileMountain(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/mountain.jpg");
  }
  
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
