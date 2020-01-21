public Tilemap map;
public allEmu emus;
public allHuman humans;
public Coin coin;

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
}

void draw()
{
    stateDeterminer();
    switch(state)
    {
        case 0:
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
            state = 0;
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
    else if(letter.equals("k"))
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
    text("You Lost :(", 30, 350);
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
        exit()
        ;
    }
}

public void introduction(){
    background(60,100,250);
    switch(introCounter){
        case 1:
            textSize(30);
            text("For so long us, the emus were oppresed", 30, 350);
            
            break;
        case 2:
            textSize(20);
            text("The farmers of australia have kept all the food from us", 30, 350);
            text("and have even started the emu war", 30, 450);
            delay(4000);
            break;
        case 3:
            textSize(30);
            text("Many of our comrades have died",30,350);
            delay(6000);
            break;
        case 4:
            textSize(20);
            text("Now it is time to avenge the deaths of our comrades!!!!",30,350);
            delay(3000);
            break;
        case 5:
            textSize(20);
            text("We will be waging emu war 2.0. Only now, we will ATTACK!!!!",30,350);
            delay(4000);
            state = 4;
            break;
    }
    introCounter++;
}


