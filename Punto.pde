class Punto {
    int x, y;

    public Punto(int x, int y){
        this.x = x;
        this.y = y;
    }

    public int getX(){
        return this.x;
    }

    public int getY(){
        return this.y;
    }

    public void setX(int x){
        this.x = x;
    }
    
    public void setY(int y){
        this.y = y;
    }

    // Metodo per confrontare due punti
    boolean equals(Punto altro){
        return getX() == altro.getX() && getY() == altro.getY();
    }

    // Rappresentazione del punto come stringa
    String toString(){
        return "(" + getX() + ", " + getY() + ")";
    }
}
