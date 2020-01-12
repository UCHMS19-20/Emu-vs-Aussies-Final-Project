public Tilemap map;
public EmuWarrior emu;
void setup()
{
    size(1200,900);
   
    map = new AusMap(3,7); 
    emu = new EmuFistFighter(0,0);
}

void draw()
{
    map.mapDisplay();
    emu.imagePrint();

}
void keyPressed()
{
    emu.move(); 
}
