class AusMap extends Tilemap
{
  String location = "New Zealand forest";
  int x = 0;
  int y = 0;

  int []numT = {1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1};
  
  public AusMap(int rowNum,int colNum)
  {
    rows = rowNum;
    cols = colNum;
    makeMatrix();
  }
  
  public void mapDisplay()
  {
    for(int i = 0; i< rows; i++)
    {
      for(int j = 0; j< cols; j++)
      {
        terrainList[i][j].imagePrint();
      }
    }
  }
  public void makeMatrix()
  {
    terrainList = new Tile [rows][cols];
    for(int i = 0; i< rows; i++){
      for(int j = 0; j< cols; j++){
        if(numT[i*(cols)+(j+1)-1] == 1){
          terrainList[i][j] = new PlainTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 2){
          terrainList[i][j] = new ForestTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 3){
          terrainList[i][j] = new MountainTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 4){
          terrainList[i][j] = new DesertTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 5){
          terrainList[i][j] = new OceanTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 6){
          terrainList[i][j] = new WhiteTile(x,y);
        }
        x+=130;
      }
      y+=130;
      x = 0;
    }
  }
  
}
