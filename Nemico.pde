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
    }

    void muovi(){
    }

    public abstract void draw();
}