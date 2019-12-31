Tile tile;
Tile tile2;
Tile tile3;
Tile tile4;
void setup()
{
    size(1200,900);
    tile = new plainTile(0,0);
    tile2 = new desertTile(60,60);
    tile3 = new mountainTile(120,120);
    tile4 = new whiteTile(180,180);
    
}

void draw()
{
  tile.tempPrint();
  tile2.tempPrint();
  tile3.tempPrint();
  tile4.tempPrint();
}
