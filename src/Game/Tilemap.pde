abstract class Tilemap
{
  int rows;
  int cols;
  public Tile [][]terrainList;
  
  public abstract void mapDisplay();
  
  public abstract void makeMatrix();
  
}
