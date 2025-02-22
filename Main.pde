Griglia griglia;
Percorso percorso;
int cellSize = 40; // Dimensione delle celle
int larghezza = 20, altezza = 20; // Dimensioni della griglia
NemicoVeloce nemico;
NemicoManager nemicoManager;
Menu menu;
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
  }else{
    background(220);
    griglia.draw();
    nemicoManager.draw();  
    nemicoManager.aggiorna();
  }
}

void drawMenu(){
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Premi per iniziare", width / 2, height / 2);
  fill(100, 200, 100);
  rect(width / 2 - 75, height / 2 + 50, 150, 50);
  fill(0);
  textSize(16);
  text("Inizia Gioco", width / 2, height / 2 + 75);
}

void mousePressed(){
  // Inizia il gioco
  if(!giocoAttivo && menu.bottoneInizio.isCliccato(mouseX, mouseY)){
    giocoAttivo = true;
    nemicoManager.generaOndata();
    return;
  }

  // Calcola le coordinate della cella cliccata
  int gridX = mouseX / cellSize;
  int gridY = mouseY / cellSize;

  // Posiziona una torre se possibile
  if(griglia.posizioneVuota(gridX, gridY) && giocoAttivo){
    griglia.posizionaTorre(gridX, gridY);
  }
}
