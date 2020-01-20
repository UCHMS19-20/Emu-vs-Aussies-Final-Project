public Tilemap map;
public allEmu emus;
public allHuman humans;
public Coin coin;

//0: Game| 1: Win| 2: Lose| 3: Introduction
int state = 0;

//Time Counter
int winLoseCounter = 0;

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

        default:
            break;
    }
}

void introduction(){

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
    winLoseCounter ++;
    if(winLoseCounter >= 300000){
        exit();
    }
}
public void win(){
    background(60,250,150);
    winLoseCounter ++;
    if(winLoseCounter >= 300000){
        exit()
        ;
    }
}
