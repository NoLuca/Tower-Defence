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
        int y = int(random(0, altezza)); // Posizione verticale di inizio casuale
        int x = 0;
        punti.add(new Punto(x, y));

        while(x < larghezza - 1){ // larghezza - 1 = ultima cella asse x
            ArrayList<Punto> mossePossibili = new ArrayList<Punto>();
            
            // Destra
            if(x + 1 < larghezza && !contienePunto(new Punto(x + 1, y))){
                mossePossibili.add(new Punto(x + 1, y));
            }

            // Su
            if(y - 1 >= 0 && !contienePunto(new Punto(x, y - 1))){
                mossePossibili.add(new Punto(x, y - 1));
            }

            // Giù
            if(y + 1 < altezza && !contienePunto(new Punto(x, y + 1))){
                mossePossibili.add(new Punto(x, y + 1));
            }

            if(mossePossibili.size() > 0){
                Punto prossimaMossa = mossePossibili.get(int(random(mossePossibili.size()))); // Prende una mossa random tra quelle possibili
                punti.add(prossimaMossa);
                x = prossimaMossa.getX();
                y = prossimaMossa.getY();
            } else{
                break; // Nessuna mossa disponibile, termina il percorso
            }
        }
    }

    boolean contienePunto(Punto p){
        for(Punto punto : punti){
            if(punto.equals(p)){
                return true;
            }
        }
        return false;
    }
}
