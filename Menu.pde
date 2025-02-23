class Menu {
    Bottone bottoneInizio;
    Bottone bottoneEsci;

    public Menu(){
        textSize(32);
        bottoneInizio = new Bottone(width / 2 - 100, height / 2 - 25, 200, 50, "Inizia");
        bottoneEsci = new Bottone(width / 2 - 100, height / 2 + 25, 200, 50, "Esci");
    }

    public void draw(){
        background(220);
        bottoneInizio.draw();
        bottoneEsci.draw();
    }
}
