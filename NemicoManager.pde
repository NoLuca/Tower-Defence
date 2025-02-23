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

        for(int i = nemici.size() - 1; i >= 0; i--){
            Nemico nemico = nemici.get(i);
            if(nemico.isArrivato()){
                nemici.remove(i);
            }
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
