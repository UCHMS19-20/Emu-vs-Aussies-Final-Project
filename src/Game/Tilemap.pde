abstract class Tilemap
{
    int rows;
    int cols;
    public Tile [][]terrainList;
    
    public abstract void mapDisplay();
    
    public abstract void makeMatrix();
    
    public int rowNum(){
        return rows;
    }

    public int colNum(){
        return cols;
    }
}
