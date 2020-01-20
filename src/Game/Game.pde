public Tilemap map;
public allEmu emus;
// public Human human;
public allHuman humans;


void setup()
{
    size(700,700);
   
    map = new AusMap(7,7); 
    emus = new allEmu();
    humans = new allHuman();
    // human = new PitchForkHuman(6,6);
}

void draw()
{
    background(0,0,0);
    map.mapDisplay();
    emus.updateImage();
    humans.updateImage();

}

void keyPressed()
{
    String letter = Character.toString(key);
    if (letter.equals("a") || letter.equals("s") ||letter.equals("d") ||letter.equals("w"))
    {
        emus.move(letter);
    }
    else if(letter.equals("k"))
    { 
        humans.fullTurn();
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
