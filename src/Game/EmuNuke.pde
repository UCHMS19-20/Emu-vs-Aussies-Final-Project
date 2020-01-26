class EmuNuke extends Emu
{
    /**
    * Class creates a nuke emu which is a type of emu.
    */
    public EmuNuke( int row, int col){
        /**
        * Constructor for a EmuNuke. 
        * Fighting, location, alive and move variables are set.
        */
        this.attack = 1000;
        this.hp = 1000; // the original hp
        this.currentHp = hp;
        this.width = 75;
        this.height = 75;
        this.row = row;
        this.col = col;
        this.moveNum = 0;
        this.maxMove = 1;  //sets max moves for emu per turn
        this.tile = map.terrainList[row][col]; // tile that emu is on
        this.xEmu = this.tile.xCord + 13;
        this.yEmu = this.tile.yCord + 13;
        this.eImage = loadImage("images/characters/nukeEmu.jpg"); // loads image
        this.alive = true; //checks if emu is alive
    }

    public void imagePrint(){   
        /**
        * If an emu is alive the image, health bar and hp will be printed
        */   
        if(alive == true){  
            image(eImage,xEmu,yEmu,width,height);
            fill(255,0,0);
            rect(xEmu, yEmu-10,currentHp *0.075, 5); 
            textSize(15);
            textAlign(CENTER, TOP);
            text(currentHp, xEmu+ (width/2), yEmu-2);
        }
    }
}
