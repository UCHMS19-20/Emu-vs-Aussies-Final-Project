class Coin{
    int coinAmount;
    int emuCost;
    int width;
    int height;
    int xCoin;
    int yCoin;
    int endRound;
    PImage cImage;
    public Coin(){
        this.emuCost = 60;
        this.coinAmount = 100;
        this.width = 100;
        this.height = 100;
        this.xCoin = 350;
        this.yCoin = 700;
        this.endRound = 80;
        this.cImage = loadImage("images/characters/coin.jpg");
    }

    public void printAllVisuals(){
        imagePrint();
        printText();
    }

    public void imagePrint(){      
        image(cImage,xCoin,yCoin,width,height);
    }

    public void printText(){
        textSize(60);
        fill(122, 102, 153);
        text(coinAmount, 200, 780);
    }
    public void endOfRound(){
        coinAmount +=endRound;
    }
    public void emuPurchase(){
        coinAmount-=emuCost;
    }
}