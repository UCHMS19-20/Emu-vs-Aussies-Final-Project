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
    if(keyPressed)
    {
       if (key == 'b' || key == 'B') {
        System.out.println(" whats this");
    }
    }
}

