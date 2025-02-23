abstract class Nemico{
    int vita;
    int danno;
    int velocita;
    float progresso;
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
            progresso += velocita * 0.01;
            if (progresso >= 1.0) {
                progresso = 0;
                posizione++;

                if(posizione >= percorso.getFine()){
                    prendiDanno(danno);
                    println(getVita());
                    return;
                }

                Punto pSucessivo = percorso.punti.get(posizione);
                x = pSucessivo.x;
                y = pSucessivo.y;
            }
        }
    }

    public boolean isArrivato(){
        return posizione >= percorso.getFine();
    }

    public abstract void draw();
}
