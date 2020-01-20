public Tilemap map;
public allEmu emus;
public Human human;

void setup()
{
    size(900,900);
   
    map = new AusMap(9,9); 
    emus = new allEmu();
    human = new PitchForkHuman(8,8);
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
