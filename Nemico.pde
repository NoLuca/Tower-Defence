abstract class Nemico{
    int vita;
    int danno;
    int velocita;
    float x, y;

    public Nemico(int vita, int danno, int velocita){
        this.vita = vita;
        this.danno = danno;
        this.velocita = velocita;
    }

    void muovi(){

    }

    public abstract void disegna();
}