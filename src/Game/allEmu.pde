public class allEmu
{
    public ArrayList<Emu> emuList;
    int selectedIndex;

    //0: no collision 1: emu collision 2: human collision
    int collisionState;

    public allEmu()
    {
        emuList = new ArrayList<Emu>(0);
        selectedIndex = 0;
    }

    public void updateImage()
    {
        for(int i = 0; i < emuList.size(); i++)
        {
            emuList.get(i).imagePrint();
        }
    }

    public void select(int x, int y)
    {   
        for(int i = 0; i < emuList.size(); i++){

            if((x >emuList.get(i).xEmu) && (x< (emuList.get(i).xEmu +emuList.get(i).width)
            && (y >emuList.get(i).yEmu) && (y< (emuList.get(i).yEmu +emuList.get(i).height)) && emuList.get(i).alive == true))
            {
                selectedIndex = i;
            }
        }
    }

    public void move(String theKey)
    { 
        Emu emu = emuList.get(selectedIndex);
        
        int tempRow = emu.row;
        int tempCol = emu.col;
        if(emu.moveNum < emu.maxMove)
        {
            switch(theKey)
            {
                case "w":
                    if(emu.row>0 && !(sameEmuLoc(--tempRow , tempCol))){
                    emu.row--;
                    emu.moveNum ++;
                    }
                    break;
                case "s":
                    if(emu.row<map.rowNum()-1 && !(sameEmuLoc(++tempRow, tempCol))){
                    emu.row++;
                    emu.moveNum ++;
                    }
                    break;
                case "a":
                    if(emu.col>0 && !(sameEmuLoc(tempRow, --tempCol ))){
                    emu.col--;
                    emu.moveNum ++;
                    }
                    break;
                case "d":
                    if(emu.col<map.colNum()-1 && !(sameEmuLoc(tempRow, ++tempCol ))){
                    emu.col++;
                    emu.moveNum ++;
                    }
                    break;
                default:
                    break;
            }
        
        emu.tile = map.terrainList[emu.row][emu.col];
        emu.xEmu = emu.tile.xCord+15;
        emu.yEmu = emu.tile.yCord+15;
        }
    }

    public boolean sameEmuLoc(int row, int col){
        //check for emu-emu collision
        for(int i = 0; i< emuList.size(); i++){
            if((row == emuList.get(i).row) && (col == emuList.get(i).col) &&!(selectedIndex == i)
            &&(emuList.get(i).alive == true)&&(emuList.get(selectedIndex).alive == true)){
                return true;
            }
        }
        return false;
    }

    public void humanEmuCollision(){
        for(int i = 0; i< emuList.size(); i++){
            for(int j = 0; j <humans.humanList.size(); j++){
                System.out.println(emuList.size()+ "" + humans.humanList.size());
                if(emuList.get(i).row == humans.humanList.get(j).row && emuList.get(i).col == humans.humanList.get(j).col
                && emuList.get(i).alive == true && humans.humanList.get(j).alive == true){
                    fight(humans.humanList.get(j), emuList.get(i),i, j);
                }
            }

        }
    }

    public void fight(Human human, Emu emu,int i ,int j){
        human.hp -= emu.attack;
        emu.hp -= human.attack;
        if(human.hp<= 0){
            humans.humanList.get(j).alive = false;
        }
        if(emu.hp<= 0){
            emuList.get(i).alive = false;
        }
    }
    public void moveReset(){
        for(int i = 0; i< emuList.size(); i++){
            emuList.get(i).moveNum = 0;
        }
    }
}