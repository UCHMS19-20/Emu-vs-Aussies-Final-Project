class Coin{
    int coinAmount;
    int fistEmuCost;
    int gunEmuCost;
    int nukeEmuCost;
    int width;
    int height;
    int xCoin;
    int yCoin;
    int endRound;
    PImage cImage;
    public Coin(){
        this.fistEmuCost = 60;
        this.gunEmuCost = 100;
        this.nukeEmuCost = 400;
        this.coinAmount = 100;
        this.width = 100;
        this.height = 100;
        this.xCoin = 350;
        this.yCoin = 700;
        this.endRound = 80;
        this.cImage = loadImage("images/characters/coin.jpg");
    }

    public void printAllVisuals(){
        rectPrint();
        imagePrint();
        printText();
    }

    public void imagePrint(){      
        image(cImage,xCoin,yCoin,width,height);
    }

    public void printText(){
        textAlign(CENTER,CENTER);
        textSize(60);
        fill(122, 102, 153);
        text(coinAmount, 260, 750);
    }

    public void rectPrint(){
        fill(100,200,80);
        rect(0,700,700,100);
    }

    public void endOfRound(){
        coinAmount +=endRound;
    }
    public void fistEmuPurchase(){
        coinAmount-=fistEmuCost;
    }
    public void gunEmuPurchase(){
        coinAmount-=gunEmuCost;
    }
    public void nukeEmuPurchase(){
        coinAmount-=nukeEmuCost;
    }

}