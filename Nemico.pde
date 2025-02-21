abstract class Nemico{
    int vita;
    int danno;
    int velocita;
    float x, y;
    int posizione = 0;
    Percorso percorso;

    public Nemico(int vita, int danno, int velocita, Percorso percorso){
        this.vita = vita;
        this.danno = danno;
        this.velocita = velocita;
        this.percorso = percorso;
        this.x = percorso.punti.get(0).getX();
        this.y = percorso.punti.get(0).getY();
    }

    void muovi(){
        if(posizione < percorso.getFine()){
            posizione++;
            Punto pSuccessivo = percorso.punti.get(posizione);
            x = pSuccessivo.getX();
            y = pSuccessivo.getY();
        }
    }

    public abstract void draw();
}