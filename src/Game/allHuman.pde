public class allHuman
{
    public ArrayList<Human> humanList;

    public allHuman(){
        humanList = new ArrayList<Human>(0);
    }

    public void turnIncrement(){
        for(int i = 0; i < humanList.size(); i++){
            humanList.get(i).turn +=1;
        }
    }

    public void updateImage(){
        for(int i = 0; i < humanList.size(); i++)
        {
            humanList.get(i).imagePrint();
        }
    }

    public void fullTurn(){

    }
    
    public void newHuman()
    {
        humanList.add(new PitchForkHuman(6,6));
    }

    public void move()
    {
        //  for(int i = 0; i < humanList.size; i++)
        // switch(humandList.get(i).id;
        // {
        //     case 1:

        // }
    }

    // public boolean sameEmuLoc(int row, int col)
    // {
        
    // }
}