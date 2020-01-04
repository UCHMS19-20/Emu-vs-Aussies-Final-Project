import java.util.*;
class OceanTile extends Tile
{
  String landscape = "oceanTile";

  public OceanTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/ocean.jpg");
  }
  
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
