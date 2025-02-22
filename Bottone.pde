class Bottone implements Cliccabile {
    float x;
    float y;
    float larghezza;
    float altezza;
    String testo;

    public Bottone(float x, float y, float larghezza, float altezza, String testo){
        this.x = x;
        this.y = y;
        this.larghezza = larghezza;
        this.altezza = altezza;
        this.testo = testo;
    }

    public float getX(){
        return this.x;
    }
    
    public float getY(){
        return this.y;
    }

    public void draw(){
        fill(100, 150, 200);
        rect(x, y, larghezza, altezza);
        fill(255);
        textAlign(CENTER, CENTER);
        text(testo, x + larghezza / 2, y + altezza / 2);
    }

    public boolean isCliccato(float mouseX, float mouseY){
        return mouseX >= x && mouseX <= x + larghezza && mouseY >= y && mouseY <= y + altezza;
    }
}
