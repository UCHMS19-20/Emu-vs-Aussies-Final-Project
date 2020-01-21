class AusMap extends Tilemap
{
  String location = "New Zealand forest";
  int x = 0;
  int y = 0;
//1: Plain 2:Forest 3: Mountain4:  Desert 5: Ocean 6: Castle
  int []numT = {1,1,1,1,1,1,1,
                1,1,1,1,1,1,1,
                1,1,1,1,1,1,1,
                5,1,1,1,1,1,6,
                1,1,1,1,1,1,1,
                1,1,1,1,1,1,1,
                1,1,1,1,1,1,1,};
  
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
          terrainList[i][j] = new FortTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 6){
          terrainList[i][j] = new FarmTile(x,y);
        }
        x+=100;
      }
      y+=100;
      x = 0;
    }
  }
  
}
