public class HumanAll
{   
    /**
    * The class manages all humans
    */   

    // Array of humans is declared
    public ArrayList<Human> humanList;

    // Array of paths is declared
    int [] pathRow3 = {3,3,3,3,3,3,3};
    int [] pathCol3 = {6,5,4,3,2,1,0};
    int [] pathRow2 = {2,2,2,2,2,2,2,3};
    int [] pathCol2 = {6,5,4,3,2,1,0,0};
    int [] pathRow4 = {4,4,4,4,4,4,4,3};
    int [] pathCol4 = {6,5,4,3,2,1,0,0};
    int [] pathRow1 = {1,1,1,1,1,1,1,2,3};
    int [] pathCol1 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow5 = {5,5,5,5,5,5,5,4,3};
    int [] pathCol5 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow0 = {0,0,0,0,0,0,0,1,2,3};
    int [] pathCol0 = {6,5,4,3,2,1,0,0,0,0};
    int [] pathRow6 = {6,6,6,6,6,6,6,5,4,3};
    int [] pathCol6 = {6,5,4,3,2,1,0,0,0,0};

    public HumanAll(){
        /**
        * Constructor for HumanAll which defines the humanList array
        */   
        humanList = new ArrayList<Human>(0);
    }

    public void turnIncrement(){
        /**
        * Increments the turn for each human if the human is alive and the human moved
        */   
        for(int i = 0; i < humanList.size(); i++){
            if(humanList.get(i).alive == true && humanList.get(i).moved == true){
                humanList.get(i).turn +=1;
            }
        }
    }

    public void updateImage(){
        /**
        * Prints the image of every single human
        */   
        for(int i = 0; i < humanList.size(); i++)
        {
            humanList.get(i).imagePrint();
        }
    }

    public void fullTurn(){
        /**
        * Does the relevent ai functions in the human ai turn
        */   
        newHuman();
        move();
        turnIncrement();
    }

    public int randomNum(){
        /**
        * Returns a random number from 0-4
        */   
        float num = random(0,5);
        int intNum = (int)num;
        return intNum;
    }

    public void newHuman(){
        /**
        * Either make a gun Human or a pitch fork human based 
        * off of the integer from the randomNum function
        */   
        int num = randomNum();
        if(num< 3){
            humanList.add(new HumanPitchFork());
        }
        else if(num ==4 || num == 3){
            humanList.add(new HumanGun());
        }
    }
        
    public void move(){   
        /**
        * Based off of the turn and the path of the human, 
        * the position of each human in the humanList arrayList is choosen.
        * If there is no human collision, the human moves.
        */   
        Human human;
        for(int i = 0; i < humanList.size(); i++){   
            human = humanList.get(i);
            switch(human.typePath){
                case 0: 
                    if(!(humanCollision(pathRow0[human.turn],pathCol0[human.turn],i))){
                        // human moves
                        human.row = pathRow0[human.turn];
                        human.col = pathCol0[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                case 1:
                    if(!(humanCollision(pathRow1[human.turn],pathCol1[human.turn],i))){
                        // human moves
                        human.row = pathRow1[human.turn];
                        human.col = pathCol1[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                case 2:
                    if(!(humanCollision(pathRow2[human.turn],pathCol2[human.turn],i))){
                        // human moves
                        human.row = pathRow2[human.turn];
                        human.col = pathCol2[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                case 3:
                    if(!(humanCollision(pathRow3[human.turn],pathCol3[human.turn],i))){
                        // human moves
                        human.row = pathRow3[human.turn];
                        human.col = pathCol3[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                case 4:
                    if(!(humanCollision(pathRow4[human.turn],pathCol5[human.turn],i))){
                        // human moves
                        human.row = pathRow4[human.turn];
                        human.col = pathCol4[human.turn];
                        human.moved = true;
                    }   
                    break;
                    
                case 5:
                    if(!(humanCollision(pathRow5[human.turn],pathCol5[human.turn],i))){
                        // human moves
                        human.row = pathRow5[human.turn];
                        human.col = pathCol5[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                case 6:
                    if(!(humanCollision(pathRow6[human.turn],pathCol6[human.turn],i))){
                        // human moves
                        human.row = pathRow6[human.turn];
                        human.col = pathCol6[human.turn];
                        human.moved = true;
                    }
                    break;
                    
                default:
                    break;          
            }
            // human moves to new tile
            human.tile = map.terrainList[human.row][human.col];
            human.xHuman = human.tile.xCord+15;
            human.yHuman = human.tile.yCord+15;
        }
    }

    public boolean humanCollision(int row,int col, int index){
        /**
        * If there is human on the tile that a human wants to move to, return true
        */   
        for(int i = 0;i< humanList.size();i++){
            if(row == humanList.get(i).row && col == humanList.get(i).col && humanList.get(i).alive == true){
                return true;
            }
        }
        return false;
    }

    public void movedFalse(){
        /**
        * Resets moved variable to false so the humans can move next turn
        */   
        for(int i = 0; i< humanList.size();i++){
            humanList.get(i).moved = false;
        }
    }
}