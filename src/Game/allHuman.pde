public class allHuman
{
    public ArrayList<Human> humanList;
    public int selectedIndex;

    public allHuman()
    {
        humanList = new ArrayList<Human>(0);
        selectedIndex = 0;
    }

    public void update()
    {
        for(int i = 0; i < humanList.size(); i++)
        {
            humanList.get(i).imagePrint();
        }
    }
    
    public void newHuman()
    {
        humanList.add(new PitchForkHuman(7,7));
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