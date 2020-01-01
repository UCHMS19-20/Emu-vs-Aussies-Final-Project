//Tile tile;
//Tile tile2;
//Tile tile3;
//Tile tile4;
Tilemap map;
void setup()
{
    size(1200,900);
    //tile = new plainTile(0,0);
    //tile2 = new desertTile(60,60);
    //tile3 = new mountainTile(120,120);
    //tile4 = new whiteTile(180,180);
    map = new nzMap(3,7); 
    map.makeMatrix();
    map.mapDisplay();
}

void draw()
{
  //tile.imagePrint();
  //tile2.imagePrint();
  //tile3.imagePrint();
  //tile4.imagePrint();
}
