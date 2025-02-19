class Griglia {
    int larghezza, altezza;
    int[][] celle;
    int celleSize;

    public Griglia(int larghezza, int altezza, int celleSize){
        this.larghezza = larghezza;
        this.altezza = altezza;
        this.celleSize = celleSize;        
        this.celle = new int[larghezza][altezza];

        for(int x = 0; x < larghezza; x++){
            for(int y = 0; y < altezza; y++){
                celle[x][y] = 0;
            }
        }
    }

    public void disegnaGriglia(){
        for(int x = 0; x < larghezza; x++){
            for(int y = 0; y < altezza; y++){
                // Colore di riempimento in base al tipo di cella
                if(celle[x][y] == 0){
                    fill(255); // Bianco per celle vuote
                }else if(celle[x][y] == 1){
                    fill(200, 200, 0); // Giallo per il percorso
                }else if(celle[x][y] == 2){
                    fill(0, 0, 255); // Blu per le torri
                }else if(celle[x][y] == 3){
                    fill(0, 255, 0); // Verde per il pundo di inizio
                }else if(celle[x][y] == 4){
                    fill(255, 0, 0); // Rosso per il pundo di fine
                }

                // Disegna il contorno della cella
                stroke(0); // Bordo nero
                rect(x * celleSize, y * celleSize, celleSize, celleSize);
            }
        }
    }

    // Verifica se una cella è vuota
    boolean posizioneVuota(int x, int y){
        if (x >= 0 && x < larghezza && y >= 0 && y < altezza){
          return celle[x][y] == 0;
        }
        return false;
    }

    // Imposta una cella come occupata da una torre (2)
    void posizionaTorre(int x, int y){
        if (posizioneVuota(x, y)){
            celle[x][y] = 2;
        }
    }

    void disegnaPercorso(Percorso percorso){
        for(int i = 0; i < percorso.punti.size(); i++){
            Punto p = percorso.punti.get(i);
            if(p.x >= 0 && p.x < larghezza && p.y >= 0 && p.y < altezza){ // Se il punto è nello schermo
                if(i == percorso.getInizio()){
                    celle[p.getX()][p.getY()] = 3; // Punto iniziale (3)
                }else if(i == percorso.getFine()){
                    celle[p.getX()][p.getY()] = 4; // Punto finale (4)
                }else{
                    celle[p.x][p.y] = 1; // Disegna il percorso (1)
                }
            }
        }
    }
    
}
