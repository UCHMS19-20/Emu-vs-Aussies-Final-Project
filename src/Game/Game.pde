Tilemap map;
void setup()
{
    size(1200,900);
   
    map = new AusMap(3,7); 
    map.makeMatrix();
}

void draw()
{
    map.mapDisplay();
}
