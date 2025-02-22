class Menu {
    Bottone bottoneInizio;

    public Menu(){
        bottoneInizio = new Bottone(width / 2 - 100, height / 2 - 25, 200, 50, "Inizia Gioco");
    }

    public void draw(){
        background(220);
        bottoneInizio.draw();
    }
}
