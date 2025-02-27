Griglia griglia;
Percorso percorso;
NemicoVeloce nemico;
NemicoManager nemicoManager;
Menu menu;
int cellSize = 40; // Dimensione delle celle
int larghezza = 20, altezza = 20; // Dimensioni della griglia
boolean giocoAttivo = false;

void setup() {
  size(800, 800);
  griglia = new Griglia(larghezza, altezza, cellSize);
  percorso = new Percorso(larghezza, altezza);
  griglia.disegnaPercorso(percorso);
  nemico = new NemicoVeloce(percorso);
  nemicoManager = new NemicoManager();
  menu = new Menu();
}

void draw(){
  if(!giocoAttivo){
    menu.draw();
  }else if(isGameOver()){
    drawGameOver();
  }else{
    background(220);
    griglia.draw();
    nemicoManager.draw();  
    nemicoManager.aggiorna();
    drawVita();
  }
}


void mousePressed(){
  // Inizia il gioco
  if(!giocoAttivo && menu.bottoneInizio.isCliccato(mouseX, mouseY)){
    giocoAttivo = true;
    nemicoManager.generaOndata();
    return;
  }
  // Esci dal gioco
  if(!giocoAttivo && menu.bottoneEsci.isCliccato(mouseX, mouseY)){
    exit();
  }

  // Calcola le coordinate della cella cliccata
  int gridX = mouseX / cellSize;
  int gridY = mouseY / cellSize;

  // Posiziona una torre se possibile
  if(griglia.posizioneVuota(gridX, gridY) && giocoAttivo){
    griglia.posizionaTorre(gridX, gridY);
  }
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    resetVita();
    giocoAttivo = false;
    setup();
  }
}
