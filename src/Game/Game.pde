public Tilemap map;
public allEmu emus;
public allHuman humans;
public Coin coin;


public PImage emuWar;
public PImage soldierEmu;
public PImage a;
public PImage w;
public PImage s;
public PImage d;
public PImage x;
public PImage z;
public PImage pointer;



//0: Game| 1: Win| 2: Lose| 3: Introduction
int state = 3;

//Time Counter
int winLoseCounter = 0;

//IntroCounter
int introCounter = 1;

void setup()
{
    size(700,800);
    coin = new Coin();
    map = new AusMap(7,7); 
    emus = new allEmu();
    humans = new allHuman();
    frameRate(30);
    emuWar = loadImage("images/background/emuWar.jpg");
    soldierEmu = loadImage("images/background/soldierEmu.jpg");
    a = loadImage("images/key/a.jpg");
    w = loadImage("images/key/w.jpg");
    s = loadImage("images/key/s.jpg");
    d = loadImage("images/key/d.jpg");
    z = loadImage("images/key/z.jpg");
    x = loadImage("images/key/x.jpg");
    pointer = loadImage("images/key/pointer.jpg");

}

void draw()
{
    stateDeterminer();
    switch(state)
    {
        case 0:
            noTint();
            background(250,250,250);
            map.mapDisplay();
            emus.updateImage();
            humans.updateImage();
            emus.humanEmuCollision();
            coin.printAllVisuals();
            break;
            
        case 1:
            win();
            break;
        case 2:
            lose();
            break;

        case 3:
            
            introduction();
            break;

        case 4:
            background(125,125,125);
            tint(125,40);
            image(soldierEmu,0,0,700,800);
            noTint();
            image(a,230,120,80,80);
            image(s,310,120,80,80);
            image(d,390,120,80,80);
            image(w,310,30,80,80);

            image(z,150,510,80,80);
            textSize(25);
            text("spawns an emu",190,610);
            image(x,470,510,80,80);
            text("ai makes move",510,610);

            image(pointer,310,300,80,80);
            text("select emu by click",350,400);

            text("press p to go to game",350,750);
            break;
            
        default:
        break;
            
    }
}



void keyPressed()
{
    String letter = Character.toString(key);
    if (letter.equals("a") || letter.equals("s") ||letter.equals("d") ||letter.equals("w"))
    {
        emus.move(letter);
    }
    else if(letter.equals("x"))
    {
        humans.movedFalse();
        humans.fullTurn();
        emus.moveReset();
        coin.endOfRound();
    }
    else if(letter.equals("z"))
    {  
        System.out.println("z");
        boolean canGenerate = true;
        for(int i = 0;i< emus.emuList.size(); i++){
            if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 0){
                 canGenerate = false;
            }
        }
        if(coin.coinAmount-coin.emuCost>=0 && canGenerate == true){
            emus.emuList.add(new EmuFistFighter(3,0));
            coin.emuPurchase();
        }   
    }
    else if (letter.equals("l")){
        System.out.println("key pressed");
        introCounter ++;
    }
    else if(letter.equals("p")){
        state = 0;
    }
}

void mouseClicked()
{
    int x = mouseX;
    int y = mouseY;
    emus.select(x,y);
}

public void stateDeterminer(){
    //Win
    for(int i = 0; i < emus.emuList.size(); i++){
        if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 6){
            state = 1;
            System.out.println("win");
        }
    }
    //Lose
    for(int i = 0; i < humans.humanList.size(); i++){
        if(humans.humanList.get(i).turn >=(humans.humanList.get(i).pathLength)){
            state = 2;
            System.out.println("lose");
        }
    }
}
public void lose(){
    background(255,60,100);
    textSize(70);
    fill(0, 0, 0);
    text("You are a big L :(", 30, 350);
    winLoseCounter ++;
    if(winLoseCounter >= 150){
        exit();
    }
    
}
public void win(){
    background(60,250,150);
    textSize(130);
    fill(0, 0, 0);
    text("You Won!!!", 30, 350);
    winLoseCounter ++;
    if(winLoseCounter >= 150){
        exit();
    }
}

public void introduction(){
    background(125,125,125);
    tint(125, 40);
    image(emuWar,0,0,700,800);
    switch(introCounter){
        case 1:
            textSize(40);
            textAlign(CENTER,CENTER);
            fill(60,200,60);
            text("For many years we,", 350, 300);
            text("the emus,", 350, 350);
            text("have been oppressed.", 350, 400);
            textSize(25);
            text("Press l to Continue",350,600);
            break;
            
        case 2:
            textSize(40);
            text("The farmers of australia have", 350, 300);
            text(" kept all the food from us,", 350, 350);
            text(" and waged the Emu War on us.",350,400);
            textSize(25);
            text("Press l to Continue",350,600);
            break;
            
        case 3:
            textSize(40);
            text("Many of our comrades have died.",350,350);
            textSize(25);
            text("Press l to Continue",350,600);
            break;
            
        case 4:
            textSize(40);
            text("Now it is time to avenge the ",350,350);
            text(" deaths of our comrades!!!!",350,400);
            textSize(25);
            text("Press l to Continue",350,600);
            break;
            
        case 5:
            textSize(40);
            text("We will be waging emu war 2.0.",350,350);
            text("Only now, we will ATTACK!!!!",350,400);
            textSize(25);
            text("Press l to Continue",350,600);
            break;
        default:
            state = 4;
            break;
        
    }
}


