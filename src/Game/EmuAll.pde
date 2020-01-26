public class EmuAll
{
    /**
    * This class is in charge of managing all emus
    */

    // Creates an arrayList of Emus
    public ArrayList<Emu> emuList;

    // Makes selected Index variable. This keeps track of the emu clicked on.
    int selectedIndex;

    public EmuAll(){
        /**
        * Constructor for EmuAll defines the emuList array and selected Index
        */
        this.emuList = new ArrayList<Emu>(0);
        this.selectedIndex = 0;
    }

    public void updateImage(){
        /**
        * This function prints the image for all alive emus
        */
        for(int i = 0; i < emuList.size(); i++){
            emuList.get(i).imagePrint();
        }
    }

    public void select(int x, int y){   
        /**
        * This function checks of mouse x and y are inside of an emu.
        * If it is, then the emu is selected and selectedIndex is set to the index of that emu
        */
        for(int i = 0; i < emuList.size(); i++){
            if((x >emuList.get(i).xEmu) && (x< (emuList.get(i).xEmu +emuList.get(i).width)
            && (y >emuList.get(i).yEmu) && (y< (emuList.get(i).yEmu +emuList.get(i).height)) 
            && emuList.get(i).alive == true)){
                selectedIndex = i;
            }
        }
    }

    public void move(String theKey){ 
        /**
        * Moves the selected emu if there is no emu 
        * in the location where the emu will move to
        */
        Emu emu = emuList.get(selectedIndex);
        int tempRow = emu.row;
        int tempCol = emu.col;

        // Checks if that emu already moved once. 
        // If the emu moved once then it can't move again
        if(emu.moveNum < emu.maxMove)
        {
            switch(theKey){
                case "w":
                    //Checks if emu will move out bounds and
                    //if there is an emu in the move loction
                    if(emu.row>0 && !(sameEmuLoc(--tempRow , tempCol))){
                        //moves up
                        emu.row--;
                        emu.moveNum ++;
                    }
                    break;
                    
                case "s":
                    //Checks if emu will move out bounds and
                    //if there is an emu in the move loction
                    if(emu.row<map.rowNum()-1 && !(sameEmuLoc(++tempRow, tempCol))){
                        //moves down
                        emu.row++;
                        emu.moveNum ++;
                    }
                    break;
                    
                case "a":
                    //Checks if emu will move out bounds and
                    //if there is an emu in the move loction
                    if(emu.col>0 && !(sameEmuLoc(tempRow, --tempCol ))){
                        //moves left
                        emu.col--;
                        emu.moveNum ++;
                    }
                    break;
                    
                case "d":
                    //Checks if emu will move out bounds and
                    //if there is an emu in the move loction
                    if(emu.col<map.colNum()-1 && !(sameEmuLoc(tempRow, ++tempCol ))){
                        //moves right
                        emu.col++;
                        emu.moveNum ++;
                    }
                    break;
                    
                default:
                    break;       
            }
        // emu moves to new tile
        emu.tile = map.terrainList[emu.row][emu.col];
        emu.xEmu = emu.tile.xCord+15;
        emu.yEmu = emu.tile.yCord+15;
        }
    }

    public boolean sameEmuLoc(int row, int col){
        //check for emu and emu collision and only moves if there is no collision
        for(int i = 0; i< emuList.size(); i++){
            if((row == emuList.get(i).row) && (col == emuList.get(i).col) &&!(selectedIndex == i)
            &&(emuList.get(i).alive == true)&&(emuList.get(selectedIndex).alive == true)){
                return true;
            }
        }
        return false;
    }

    public void humanEmuCollision(){
        /**
        * Checks for emu and human collision and lets them fight if there is a collision.
        * if there is no collision the emu moves normally.
        */
        for(int i = 0; i< emuList.size(); i++){
            for(int j = 0; j <humans.humanList.size(); j++){
                if(emuList.get(i).row == humans.humanList.get(j).row && emuList.get(i).col == humans.humanList.get(j).col
                && emuList.get(i).alive == true && humans.humanList.get(j).alive == true){
                    fight(humans.humanList.get(j), emuList.get(i),i, j);
                }
            }
        }
    }

    public void fight(Human human, Emu emu,int i ,int j){
        /**
        *human and emu fights and if the hp is below 0 the emu/human is considered not alive
        */
        human.currentHp -= emu.attack;
        emu.currentHp -= human.attack;
        if(human.currentHp<= 0){
            humans.humanList.get(j).alive = false;
        }
        if(emu.currentHp<= 0){
            emuList.get(i).alive = false;
        }
    }
    
    public void moveReset(){
        /**
        * Resets move counter to 0 for all emus. This is so all emus can move again next turn
        */
        for(int i = 0; i< emuList.size(); i++){
            emuList.get(i).moveNum = 0;
        }
    }
}