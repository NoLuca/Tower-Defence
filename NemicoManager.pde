class NemicoManager{
    ArrayList<Nemico> nemici;
    int ondataCorrente;
    int tempoOndata;
    int intervallo = 5000; // 5s

    public NemicoManager(){
        nemici = new ArrayList<Nemico>();
        ondataCorrente = 0;
        tempoOndata = millis();
    }

    public void aggiorna(){
        if(millis() - tempoOndata >= intervallo){
            generaOndata();
            tempoOndata = millis();
        }

        for(Nemico nemico : nemici){
            nemico.muovi();
        }
    }

    public void draw(){
        for(Nemico nemico : nemici){
            nemico.draw();
        }
    }

    void generaOndata(){
        ondataCorrente++;
        for(int i = 0; i < ondataCorrente * 3; i++){
            nemici.add(new NemicoVeloce(percorso));
        }
    }
}
