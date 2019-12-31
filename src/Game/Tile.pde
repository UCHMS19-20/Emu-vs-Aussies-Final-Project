import java.util.*;
class Tile
{
  int xCord;
  int yCord;
  PImage tImage;
  String landscape;
  
  
  
  public Tile(int xPos, int yPos, String terrain)
  {
    xCord = xPos;
    yCord = yPos;
    landscape = terrain;
    tImage = terrainFinder(terrain); 
  }
  
  public void tempPrint()
  {
    image(tImage,xCord,yCord);
  }
  
  PImage terrainFinder(String terrain)
  {
    PImage imgL;
    if(terrain.equals("plain"))
    {
      imgL = loadImage("Plain.jpg");
    }
    else if(terrain.equals("desert"))
    {
      imgL = loadImage("Desert.jpg");
    }
    else if(terrain.equals("forest"))
    {
      imgL = loadImage("Forest.jpg");
    }
    else if(terrain.equals("mountain"))
    {
      imgL = loadImage("Mountain.jpg");
    }
    else
    {
      imgL = loadImage("WSquare.jpg");
    }
    return imgL;
  }
}
