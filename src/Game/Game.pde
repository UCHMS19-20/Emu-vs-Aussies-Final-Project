public Tilemap map;
public allEmu emus;
public allHuman humans;
public Coin coin;

PImage fistEmuPic;
PImage gunEmuPic;
PImage nukeEmuPic;
PImage gunHumanPic;
PImage pitchForkHumanPic;


public PImage emuWar;
public PImage soldierEmu;

public PImage a;
public PImage w;
public PImage s;
public PImage d;
public PImage one;
public PImage two;
public PImage three;
public PImage n;
public PImage pointer;

//0: Game| 1: Win| 2: Lose| 3: Introduction| 4: Keys
int state = 3;

//Time Counter
int winLoseCounter = 0;

//IntroCounter
int introCounter = 1;

void setup()
{
    size(800,800);
    coin = new Coin();
    map = new AusMap(7,7); 
    emus = new allEmu();
    humans = new allHuman();
    frameRate(30);
    emuWar = loadImage("images/background/emuWar.jpg");
    soldierEmu = loadImage("images/background/soldierEmu.jpg");
    fistEmuPic = loadImage("images/characters/fistEmu.jpg");
    gunEmuPic = loadImage("images/characters/gunEmu.jpg");
    nukeEmuPic = loadImage("images/characters/nukeEmu.jpg");
    pitchForkHumanPic = loadImage("images/characters/man.jpg");
    gunHumanPic = loadImage("images/characters/gunHuman.jpg");
    a = loadImage("images/key/a.jpg");
    w = loadImage("images/key/w.jpg");
    s = loadImage("images/key/s.jpg");
    d = loadImage("images/key/d.jpg");
    one = loadImage("images/key/one.jpg");
    two = loadImage("images/key/two.jpg");
    three = loadImage("images/key/three.jpg");
    n = loadImage("images/key/n.jpg");
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
            infoRight();
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
            keys();
            break;
        case 5:
            rules();
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
    else if(letter.equals("n"))
    {
        if(state == 0){
            humans.movedFalse();
            humans.fullTurn();
            emus.moveReset();
            coin.endOfRound();
        }
    }
    else if(letter.equals("1"))
    {  
        if (state == 0){
            boolean canGenerate = true;
            for(int i = 0;i< emus.emuList.size(); i++){
                if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 0){
                    canGenerate = false;
                }
            }
            if(coin.coinAmount-coin.fistEmuCost>=0 && canGenerate == true){
                emus.emuList.add(new EmuFistFighter(3,0));
                coin.fistEmuPurchase();
            }
        }
    }
    else if(letter.equals("2")){
        if (state == 0){
            System.out.println("2");
            boolean canGenerate = true;
            for(int i = 0;i< emus.emuList.size(); i++){
                if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 0){
                    canGenerate = false;
                }
            }
            if(coin.coinAmount-coin.gunEmuCost>=0 && canGenerate == true){
                emus.emuList.add(new EmuGun(3,0));
                coin.gunEmuPurchase();
            }     
        }
    }
    else if(letter.equals("3")){
        boolean canGenerate = true;
        for(int i = 0;i< emus.emuList.size(); i++){
            if(emus.emuList.get(i).row == 3 && emus.emuList.get(i).col == 0){
                 canGenerate = false;
            }
        }
        if(coin.coinAmount-coin.nukeEmuCost>=0 && canGenerate == true){
            emus.emuList.add(new EmuNuke(3,0));
            coin.nukeEmuPurchase();
        }     
    }
    else if (letter.equals("h")){
        System.out.println("key pressed");
        introCounter ++;
    }
    else if(letter.equals("j")){
        state = 5;
    }
    else if(letter.equals("k")){
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
public void keys(){
    background(125,125,125);
    tint(125,40);
    image(soldierEmu,0,0,800,800);
    noTint();
    image(a,280,120,80,80);
    image(s,360,120,80,80);
    image(d,440,120,80,80);
    image(w,360,40,80,80);

    textSize(18);

    image(pointer,60,300,80,80);
    text("spawns emu by click",100,400);

    image(one,260,300,80,80);
    text("spawns normal emu",300,400);

    image(two,460,300,80,80);
    text("spawns gun emu",500,400);

    image(three,660,300,80,80);
    text("spawns nuke emu",700,400);

    image(n,360,510,80,80);
    text("lets ai make move",400,610);

    text("press j to go to game",400,780);
}
public void infoRight(){
    fill(188, 238, 153);
    rect(700,0,100,800);
    
    fill(0,0,0);
    textSize(15);
    textAlign(CENTER,CENTER);

    image(fistEmuPic,710,30,80,80);
    text("hp: " + 100, 750, 15);
    text("attack: " + 100, 750, 125);

    image(gunEmuPic,710,190,80,80);
    text("hp: " + 100, 750, 175);
    text("attack: " + 100, 750, 285);

    image(nukeEmuPic,710,350,80,80);
    text("hp: " + 100, 750, 335);
    text("attack: " + 100, 750, 445);

    image(pitchForkHumanPic,710,510,80,80);
    text("hp: " + 100, 750, 495);
    text("attack: " + 100, 750, 605);

    image(gunHumanPic,710,670,80,80);
    text("hp: " + 100, 750, 650);
    text("attack: " + 100, 750, 765);

    textSize(12);
    fill(255,0,0);
    text("Press 1| $60", 750, 35);
    text("Press 2| $60", 750, 195);
    text("Press 3| $60", 750, 355);
}
public void introduction(){
    background(125,125,125);
    tint(125, 40);
    image(emuWar,0,0,800,800);
    switch(introCounter){
        case 1:
            textSize(40);
            textAlign(CENTER,CENTER);
            fill(60,200,60);
            text("For many years we,",400, 300);
            text("the emus,", 400, 350);
            text("have been oppressed.", 400, 400);
            textSize(25);
            text("Press h to Continue",400 ,600);
            break;
            
        case 2:
            textSize(40);
            text("The farmers of australia have", 400, 300);
            text(" kept all the food from us,", 400, 350);
            text(" and waged the Emu War on us.",400,400);
            textSize(25);
            text("Press h to Continue",400,600);
            break;
            
        case 3:
            textSize(40);
            text("Many of our comrades have died.",400,350);
            textSize(25);
            text("Press h to Continue",400,600);
            break;
            
        case 4:
            textSize(40);
            text("Now it is time to avenge the ",400,350);
            text(" deaths of our comrades!!!!",400,400);
            textSize(25);
            text("Press h to Continue",400,600);
            break;
            
        case 5:
            textSize(40);
            text("We will be waging emu war 2.0.",400,350);
            text("Only now, we will ATTACK!!!!",400,400);
            textSize(25);
            text("Press h to Continue",400,600);
            break;
        default:
            state = 4;
            break;
    }
    
}
public void rules(){
    background(130,130,230);
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(0,0,0);
    text("Rules",400,50);
    textSize(25);
    text("The purpose of this game is for ",400,30);
    text("an emu to reach the enemy castle on the right.",400,60);
    text("You lose by having a human reach your base on the left",400,90);
    text("This is a turn base game.",400,150);
    text("During a turn you can buy emus and",400,180);
    text("you can move each emu one square",400,210);
    text("You let the ai move at the end of your turn",400,240);
    text("NOTE: If you attack a human you will",400,300);
    text("take their attack damage",400,330);
}



