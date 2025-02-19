class Percorso {
    ArrayList<Punto> punti;

    public Percorso(int largezza, int altezza){
        punti = new ArrayList<Punto>();
        generaPercorso(largezza, altezza);
    }

    void generaPercorso(int largezza, int altezza){
        int y = int(random(0, altezza));

        for(int x = 0; x < largezza; x++){
            punti.add(new Punto(x, y));
        }
    }
}
