public Tilemap map;
public allEmu emus;
int i = 0;
int j = 0;

void setup()
{
    size(1200,900);
   
    map = new AusMap(8,8); 
    emus = new allEmu();
}

void draw()
{
    background(0,0,0);
    map.mapDisplay();
    emus.update();
}

void keyPressed()
{
    String letter = Character.toString(key);
    if (!letter.equals("z"))
    {
        emus.move(letter);
    }
    else if(letter.equals("z"))
    {
        emus.emuList.add(new EmuFistFighter(0,0));
    }
}

void mouseClicked()
{
    int x = mouseX;
    int y = mouseY;
    emus.select(x,y);
}
