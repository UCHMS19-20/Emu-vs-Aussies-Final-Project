
Tilemap map;
void setup()
{
    size(1200,900);
   
    map = new AusMap(3,7); 
    map.makeMatrix();
    map.mapDisplay();
}

void draw()
{
    map.mapDisplay();
}
