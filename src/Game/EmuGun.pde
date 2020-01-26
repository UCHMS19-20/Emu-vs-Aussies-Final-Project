class EmuGun extends Emu{
    /**
    * Class creates a gun emu which is a type of emu.
    */
    public EmuGun( int row, int col){
        /**
        * Constructor for a EmuGun. 
        * Fighting, location, alive and move variables are set.
        */
        this.attack = 150;
        this.hp = 100; // the original hp
        this.currentHp = hp;
        this.width = 75;
        this.height = 75;
        this.row = row;
        this.col = col;
        this.moveNum = 0;
        this.maxMove = 1; //sets max moves for emu per turn
        this.tile = map.terrainList[row][col]; // tile that emu is on
        this.xEmu = this.tile.xCord + 13;
        this.yEmu = this.tile.yCord + 13;
        this.eImage = loadImage("images/characters/gunEmu.jpg"); // loads image
        this.alive = true; //checks if emu is alive
    }

    public void imagePrint(){   
        if(alive == true){  
            /**
            * If an emu is alive the image, health bar and hp will be printed
            */   
            image(eImage,xEmu,yEmu,width,height);
            fill(255,0,0);
            rect(xEmu, yEmu- 10,currentHp *0.75, 5);
            textAlign(CENTER, TOP); 
            textSize(15);
            text(currentHp, xEmu+ (width/2), yEmu-2);
        }
    }
}
