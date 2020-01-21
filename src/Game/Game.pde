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
int introCounter = 0;

void setup()
{
    size(700,800);
    coin = new Coin();
    map = new AusMap(7,7); 
    emus = new allEmu();
    humans = new allHuman();
    frameRate(30);
    emuWar = loadImage("images/characters/emuWar.jpg");
    soldierEmu = loadImage("images/characters/soldierEmu.jpg");
    a = loadImage("images/characters/a.jpg");
    w = loadImage("images/characters/w.jpg");
    s = loadImage("images/characters/s.jpg");
    d = loadImage("images/characters/d.jpg");
    z = loadImage("images/characters/z.jpg");
    x = loadImage("images/characters/x.jpg");
    pointer = loadImage("images/characters/pointer.jpg");

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
            delay(4000);
            background(250,250,250);
            tint(125,200);
            image(soldierEmu,0,0,700,800);
            noTint();
            image(a,30,120,80,80);
            image(s,120,120,80,80);
            image(d,210,120,80,80);
            image(w,120,30,80,80);

            image(z,600,700,80,80);
            textSize(15);
            text("spawn emu",600,790);
            image(x,400,700,80,80);
            text("farmer ai makes move",350,790);

            image(pointer,300,300,80,80);
            text("select emu by click",280,400);

            text("press p to go to game",0,600);

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
        boolean canGenerate = true;
        for(int i = 0;i< emus.emuList.size(); i++){
            if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 0){
                 canGenerate = false;
            }
        }
        if(coin.coinAmount-coin.emuCost>=0 && canGenerate == true ){
            emus.emuList.add(new EmuFistFighter(3,0));
            coin.emuPurchase();
        }   
    }
    else if (letter.equals("l")){
        state = 4;
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
    textSize(100);
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
    tint(125, 80);
    image(emuWar,0,0,700,800);
    switch(introCounter){
        case 1:
            textSize(20);
            fill(255,0,0);
            text("For many years we, the emus, have been oppressed", 130, 350);
            break;
        case 2:
            textSize(20);
            text("The farmers of australia have kept all the food from us", 60, 350);
            text("and waged the Emu War on us",175,400);
            textSize(15);
            text("Press l to skip",300,600);
            delay(5000);
            break;
        case 3:
            textSize(20);
            text("Many of our comrades have died",170,350);
            textSize(15);
            text("Press l to skip",300,600);
            delay(8000);
            break;
        case 4:
            textSize(20);
            text("Now it is time to avenge the deaths of our comrades!!!!",70,350);
            textSize(15);
            text("Press l to skip",300,600);
            delay(3000);
            break;
        case 5:
            textSize(20);
            text("We will be waging emu war 2.0. Only now, we will ATTACK!!!!",60,350);
            textSize(15);
            text("Press l to skip",300,600);
            delay(4000);
            state = 4;
            break;
    }
    introCounter++;
}


