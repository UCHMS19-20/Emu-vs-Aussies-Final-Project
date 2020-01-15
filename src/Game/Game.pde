public Tilemap map;
// public Emu emu;
public allEmu emus;
int i = 0;
int j = 0;

void setup()
{
    size(1200,900);
   
    map = new AusMap(8,8); 
    emus = new allEmu();
    // emu = new EmuFistFighter(0,0);
}

void draw()
{
    background(0,0,0);
    map.mapDisplay();
    // emu.imagePrint();
    emus.update();
}

void keyPressed()
{
    String letter = Character.toString(key);
    if (!letter.equals("z"))
    {
        emus.moveChooser(letter);
    }
    else if(letter.equals("z"))
    {
        emus.emuList.add(new EmuFistFighter(0,0));
    }
}

void mouseClicked()
{
    // emus.emuList.add(new EmuFistFighter(0,0));
    int x = mouseX;
    int y = mouseY;
    emus.select(x,y);
    
}
