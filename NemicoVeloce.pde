class NemicoVeloce extends Nemico{
    public NemicoVeloce(int vita, int danno, int velocita, Percorso percorso){
        super(vita, danno, velocita, percorso);
    }

    public void draw(){
        fill(155, 0, 0);
        stroke(0);
        rect(x * 40 + 10, y * 40 + 10, 20, 20);
    }
}