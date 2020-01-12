public Tilemap map;
public Emu emu;
public allEmu emus;
int i = 0;
int j = 0;

void setup()
{
    size(1200,900);
   
    map = new AusMap(3,7); 
    emus = new allEmu();
    emu = new EmuFistFighter(0,0);
}

void draw()
{
    map.mapDisplay();
    emu.imagePrint();
    emus.update();
}

void keyPressed()
{
    String letter = Character.toString(key);
    emu.move(letter);
}
void mouseClicked()
{
    emus.emuList.add(new EmuFistFighter(i,j));
    System.out.println("UWU");
   
}
