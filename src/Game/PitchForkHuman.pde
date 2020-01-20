class PitchForkHuman extends Human
{
    int [] pathRow1;
    public PitchForkHuman()
    {
        this.typePath = pathSet();
        this.pathLength = 0;
        this.attack = 100;
        this.hp = 100;
        this.currentHp = hp;
        this.width = 75;
        this.height = 75;
        this.row = 3;
        this.col = 0;
        this.turn = 0;
        this.tile = map.terrainList[row][col];
        this.name = "human";
        this.xHuman = this.tile.xCord + 13;
        this.yHuman = this.tile.yCord + 13;
        this.hImage = loadImage("images/characters/man.jpg");
        this.alive = true;
        this.moved = false;
    }
    public int pathSet()
    {
        float path = random(1,8);
        int intPath = (int)path;
        return intPath;
    }

    public void imagePrint(){
        if(alive == true){
            image(hImage,xHuman,yHuman,width,height);
            fill(250,0,0);
            rect(xHuman, yHuman,currentHp *0.75, 5); 
        }
    }
}
