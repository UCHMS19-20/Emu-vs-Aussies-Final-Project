abstract class Tilemap{   
    /**
    * Defines variables and functions that all classes 
    * which extend this will use.
    */
    int rows;
    int cols;

    public Tile [][]terrainList;
    
    /**
    * Function that prints the map which will
    * be defined in classes which extend this
    */
    public abstract void mapDisplay();
    
    /**
    * Map that makes a matrix with all tile locations which
    * be defined in classes which extend this
    */
    public abstract void makeMatrix();

    public int rowNum(){
        /**
        * returns the number of rows
        */
        return rows;
    }

    public int colNum(){
        /**
        * returns the number of cols
        */
        return cols;
    }
}
