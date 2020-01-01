abstract class Tilemap
{
  int rows;
  int cols;
  Tile [][]terrainList;
  
  public abstract void mapDisplay();
  
  public abstract void makeMatrix();
  
}
