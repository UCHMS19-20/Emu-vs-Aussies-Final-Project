class EmuFistFighter extends Emu
{

    public EmuFistFighter( int row, int col)
    {
        this.attack = 50;//It is actually two times higher
        this.hp = 100;
        this.currentHp = hp;
        this.width = 75;
        this.height = 75;
        this.row = row;
        this.col = col;
        this.moveNum = 0;
        this.maxMove = 1;
        this.name = "emu";
        this.tile = map.terrainList[row][col];
        this.xEmu = this.tile.xCord + 13;
        this.yEmu = this.tile.yCord + 13;
        this.eImage = loadImage("images/characters/fistEmu.jpg");
        this.alive = true;
    }
    public void imagePrint()
    {   
        if(alive == true){  
            image(eImage,xEmu,yEmu,width,height);
            fill(255,0,0);
            rect(xEmu, yEmu- 10,currentHp * 0.75, 5); 
            textSize(15);
            textAlign(CENTER, TOP);            
            text(currentHp, xEmu+ (width/2), yEmu-2);
        }
    }
}
