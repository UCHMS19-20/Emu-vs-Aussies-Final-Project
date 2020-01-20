public Tilemap map;
public allEmu emus;
int i = 0;
int j = 0;
public Human human;

void setup()
{
    size(1200,900);
   
    map = new AusMap(8,8); 
    emus = new allEmu();
    human = new PitchForkHuman(7,7);
}

void draw()
{
    background(0,0,0);
    map.mapDisplay();
    emus.update();
    human.imagePrint();
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
        emus.emuList.add(new EmuFistFighter(4,0));
    }
}

void mouseClicked()
{
    int x = mouseX;
    int y = mouseY;
    emus.select(x,y);
}
