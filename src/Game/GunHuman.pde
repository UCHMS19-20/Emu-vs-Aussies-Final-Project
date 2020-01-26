class GunHuman extends Human
{
    int [] pathRow1;
    public GunHuman()
    {
        this.typePath = pathSet();
        this.pathLength = setPathLength();
        this.attack = 300;
        this.hp = 200;
        this.currentHp = hp;
        this.width = 75;
        this.height = 75;
        this.row = setRow();
        this.col = setCol();
        this.turn = 0;
        this.tile = map.terrainList[row][col];
        this.name = "human";
        this.xHuman = this.tile.xCord + 13;
        this.yHuman = this.tile.yCord + 13;
        this.hImage = loadImage("images/characters/gunHuman.jpg");
        this.alive = true;
        this.moved = true;
    }
    public int pathSet()
    {
        float path = random(0,18);
        int intPath = (int)path;
        System.out.println(intPath);
        if(intPath == 0){
            return 0;
        }
        else if(intPath == 1 || path == 2){
            return 1;
        }
        else if(intPath> 2 && path< 5){
            return 2;
        }
        else if(intPath> 5 && path< 12){
            return 3;
        }
        else if(intPath> 11 && path< 15){
            return 4;
        }
        else if(intPath == 15 || path == 16){
            return 5;
        }
        else if(intPath == 17){
            return 6;
        }
        return 0;
    }

    public void imagePrint(){
        if(alive == true){
            image(hImage,xHuman,yHuman,width,height);
            fill(250,0,0);
            rect(xHuman, yHuman-10,currentHp *(0.75/2), 5); 
            textAlign(CENTER, TOP); 
            textSize(15);
            text(currentHp, xHuman+ (width/2), yHuman-2);
        }
    }
    public int setPathLength()
    {
        switch(typePath)
        {   
            case 0:
                return humans.pathRow0.length;
                
            case 1:
                return humans.pathRow1.length;
                
            case 2:
                return humans.pathRow2.length;
                
            case 3:
                return humans.pathRow3.length;
                
            case 4:
                return humans.pathRow4.length;
                
            case 5:
                return humans.pathRow5.length;
                
            case 6:
                return humans.pathRow6.length;
                
            default:
                return 0;
        }
    }
    public int setCol()
    {
        switch(typePath)
        {   
            case 0:
                return humans.pathCol0[0];
                
                
            case 1:
                return humans.pathCol1[0];
                
            case 2:
                return humans.pathCol2[0];
                
            case 3:
                return humans.pathCol3[0];
                
            case 4:
                return humans.pathCol4[0];
                
            case 5:
                return humans.pathCol5[0];
                
            case 6:
                return humans.pathCol6[0];
            default:
                return 0;

                
        }
    }
    public int setRow()
    {
        switch(typePath)
        {   
            case 0:
                return humans.pathRow0[0];
                
            case 1:
                return humans.pathRow1[0];
                
            case 2:
                return humans.pathRow2[0];
                
            case 3:
                return humans.pathRow3[0];
                
            case 4:
                return humans.pathRow4[0];
                
            case 5:
                return humans.pathRow5[0];
                
            case 6:
                return humans.pathRow6[0];
            default:
                return 0;
                
        }
    }
}
