class NemicoVeloce extends Nemico{
    public NemicoVeloce(Percorso percorso){
        super(10, 5, 3, percorso); // Parametri costanti del nemico veloce
    }

    public void draw(){
        fill(155, 0, 0);
        stroke(0);
        rect(x * 40 + 10, y * 40 + 10, 20, 20);
    }
}