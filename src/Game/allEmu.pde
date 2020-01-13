public class allEmu
{
    public ArrayList<Emu> emuList;

    public allEmu()
    {
        emuList = new ArrayList<Emu>(0);
    }
    public void update()
    {
        // System.out.println(emuList.size());
        for(int i = 0; i < emuList.size(); i++)
        {
            emuList.get(i).imagePrint();
        }
    }
    public void select(int x, int y)
    {   
        // System.out.println("The x and y of mouse is"x + " and" + y);
        // System.out.println(emuList.get(0).getX() + " .. " + emuList.get(0).getY() );
        for(int i = 0; i < emuList.size(); i++){

            if(( x >emuList.get(i).getX()) && (x< (emuList.get(i).getX() +emuList.get(i).getWidth()))
            && (y >emuList.get(i).getY()) && (y< (emuList.get(i).getY() +emuList.get(i).getHeight())))
                {
                    emuList.get(i).setSelected(true);
                }

            else{
                emuList.get(i).setSelected(false);
            }
        }
    }
    public void moveChooser(String theKey)
    {
        System.out.println("OWO1");
        for (int i = 0; i<emuList.size(); i++)
        {
            if(emuList.get(i).getSelected() == true){
                System.out.println("OWO Select");
                emuList.get(i).move(theKey);
            }
        }
    }   
}