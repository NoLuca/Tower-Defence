class Percorso {
    ArrayList<Punto> punti;

    public Percorso(int largezza, int altezza){
        punti = new ArrayList<Punto>();
        generaPercorso(largezza, altezza);
    }

    public int getInizio(){
        return 0;
    }

    public int getFine(){
        return punti.size() - 1;
    }

    void generaPercorso(int largezza, int altezza){
        int y = int(random(0, altezza));

        for(int x = 0; x < largezza; x++){
            punti.add(new Punto(x, y));
        }
    }
}
