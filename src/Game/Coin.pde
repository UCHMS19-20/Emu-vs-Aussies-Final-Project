class Coin{
    /**
    * This class controls the monetary transactions and the images representing them.
    * There are also some background objects in this class that are near the coin images.
    */
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
        /**
        * Constructor for coin class. Position, image, size and cost variables are set
        */
        this.fistEmuCost = 60;
        this.gunEmuCost = 100;
        this.nukeEmuCost = 400;
        this.coinAmount = 100;
        this.width = 95;
        this.height = 95;
        this.xCoin = 380;
        this.yCoin = 703;
        this.endRound = 80;
        this.cImage = loadImage("images/characters/coin.jpg");
    }

    public void printAllVisuals(){
        /**
        * Prints all visuals
        */
        rectPrint();
        imagePrint();
        printText();
    }

    public void imagePrint(){     
        /**
        * prints the coin image
        */ 
        image(cImage,xCoin,yCoin,width,height);
    }

    public void printText(){
        /**
        * Prints all the text near the coin area
        */
        textAlign(CENTER,CENTER);
        textSize(60);
        fill(122, 102, 153);
        text(coinAmount, 310, 750);
        textSize(15);
        fill(100,30,0);
        text("Press j to go back to rules",130,750);
        text("Press h to go back to keys",590,750);
    }

    public void rectPrint(){
        /**
        * Prints the rectangle that is the background for the coin image
        */
        fill(150,250,130);
        rect(0,700,700,100);
    }

    public void endOfRound(){
        /**
        * adds coins based on endRound variable
        */
        coinAmount +=endRound;
    }

    public void fistEmuPurchase(){
        /**
        * subtracts coins based on fistEmuCost variable
        */
        coinAmount-=fistEmuCost;
    }

    public void gunEmuPurchase(){
        /**
        * subtracts coins based on gunEmuCost variable
        */
        coinAmount-=gunEmuCost;
    }

    public void nukeEmuPurchase(){
        /**
        * subtracts coins based on nukeEmuCost variable
        */
        coinAmount-=nukeEmuCost;
    }
}