class nzMap extends Tilemap
{
  String location = "New Zealand forest";
  int x = 0;
  int y = 0;
  //1 = plain, 2 = forest, 3 = mountain, 4 = desert, 5 = white,
  int []numT = {1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1};
  
  public nzMap(int rowNum,int colNum)
  {
    rows = rowNum;
    cols = colNum;
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
    for(int i = 0; i< rows; i++)
    {
      for(int j = 0; j< cols; j++)
      {
        if(numT[i*(cols)+(j+1)-1] == 1)
        {
          terrainList[i][j] = new plainTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 2)
        {
          terrainList[i][j] = new forestTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 3)
        {
          terrainList[i][j] = new mountainTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 4)
        {
          terrainList[i][j] = new desertTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 5)
        {
          terrainList[i][j] = new oceanTile(x,y);
        }
        else if(numT[i*(cols)+(j+1)-1] == 6)
        {
          terrainList[i][j] = new whiteTile(x,y);
        }

        x+=130;
      }
      y+=130;
      x = 0;
    }
  }
}
