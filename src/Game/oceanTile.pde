import java.util.*;
class oceanTile extends Tile
{
  String landscape = "oceanTile";

  public oceanTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("ocean.jpg");
  }
  
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
