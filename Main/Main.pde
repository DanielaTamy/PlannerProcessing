// Desenvolvedora: Dani Tamy Yuki
// Desenvolvedor: Jorge Samuel Teixeira Jordão

/*
- Importar a bilioteca "processing.video.*"
- Importar a biblitoeca "ddf.minim.*"
- Criar o tipo "PImage" para armazenar todas as imagens da pasta atual em uma array
- Criar o tipo "Movie" para armazenar todas os vídeos da pasta "data"  em uma array
- O estado inicial, por padrão, é o estado 0
*/

import processing.video.*;
import ddf.minim.*;

int xp = -150;
int estado = 0; 
int cor = color(0, 0, 255); // comece com azul
boolean drawEllipse = false;

PImage[] images = new PImage[28]; // imagens do projeto
PImage play; // Botão de play

Movie[] movies = new Movie[12]; // vídeos do projeto

Minim minim;
AudioPlayer opening_song; // cria o som para cada áudio

/*
- Utilizar a função setup()
- O tamanho da tela será de 400 por 700
- Baixar todas as imagens no interior da array
- Carregar todos os vídeos no interior da array utilizando um laço de repetição
*/

void setup(){
  size(400,700); //dimensão da tela
  
  minim = new Minim (this);
  
  opening_song = minim.loadFile("vinheta_abertura.mp3"); // https://www.youtube.com/watch?v=7zVWWkvaz_0
  
// carregamento das imagens (váriaveis)
  images[0] = loadImage("tela_inicial.jpg");
  images[1] = loadImage("calendario.png");
  images[2] = loadImage("creditos.jpg");
  images[3] = loadImage("janeiro.jpg");
  images[4] = loadImage("fevereiro.jpg");
  images[5] = loadImage("marco.jpg");
  images[6] = loadImage("abril.jpg");
  images[7] = loadImage("maio.jpg");
  images[8] = loadImage("junho.jpg");
  images[9] = loadImage("julho.jpg");
  images[10] = loadImage("agosto.jpg");
  images[11] = loadImage("setembro.jpg");
  images[12] = loadImage("outubro.jpg");
  images[13] = loadImage("novembro.jpg");
  images[14] = loadImage("dezembro.jpg");
  images[15] = loadImage("financeiro.png");
  images[16] = loadImage("concluido.png");
  images[17] = loadImage("cancelado.png");
  images[18] = loadImage("todo.png");
  images[19] = loadImage("1.jpg");
  images[20] = loadImage("2.jpg");
  images[21] = loadImage("3.jpg");
  images[22] = loadImage("sumario.jpg");
  images[23] = loadImage("travel-list.jpg");
  images[24] = loadImage("movie_list.jpeg");
  images[25] = loadImage("mood_chart.png");
  images[26] = loadImage("book.png");
  images[27] = loadImage("familia.jpeg");
  play = loadImage("play.png");
  
// carregamento dos videos
  for (int i = 0; i < movies.length; i++) { //<>//
      movies[i] = new Movie(this, i + ".mov");
      movies[i].loop(); 
    }
}

/*
- Utilizar a função draw()
- Utilizar uma sequência de decisões para atualizar o estado atual do aplicativo
*/

void draw() {
  
  if (estado == 0){
    background(images[0]);
    image(play, 165, 360); //botão de play
    opening_song.play();
} else if (estado == 1){  // calendario
      background(images[1]);
} else if (estado == 2){  //creditos
      background(images[2]);
      image(images[27], 70, 390);
} else if (estado == 3){  //janeiro
      background(images[3]);
      image(movies[0], 40, 450);
} else if (estado == 4){  //fevereiro
      background(images[4]);
      image(movies[1], 40, 450);
} else if (estado == 5) {  //março
      background(images[5]);
      image(movies[2], 40, 450);
} else if (estado == 6) {  //abril
      background(images[6]);
      image(movies[3], 40, 450);
} else if (estado == 7) {  //maio
      background(images[7]);
      image(movies[4], 40, 450);
} else if (estado == 8) {  //junho
      background(images[8]);
      image(movies[5], 40, 450); 
} else if (estado == 9) {  //julho
      background(images[9]);
      image(movies[6], 40, 450); 
} else if (estado == 10) {  //agosto
      background(images[10]);
      image(movies[7], 40, 450); 
} else if (estado == 11) {  //setembro
      background(images[11]);
      image(movies[8], 40, 450); 
} else if (estado == 12) {  //outubro
      background(images[12]);
      image(movies[9], 40, 450); 
} else if (estado == 13) {  //novembro
      background(images[13]);
      image(movies[10], 40, 450); 
} else if (estado == 14) {  //dezembro
      background(images[14]);
      image(movies[11], 40, 450); 
} else if (estado == 15){ // finanças
      background(images[15]);
      drawFinanceiro();
}else if (estado == 18){ // todolist
      background(images[18]);
      drawToDoList();
} else if (estado == 19){ // links1
     background(images[19]);
     drawImage(xp+40, 350);
     
     if (xp<width+150) xp++; else xp=-150;

} else if (estado == 20){ // links2
      background(images[20]);
} else if (estado == 21){ // links3
      background(images[21]);
} else if (estado == 22){
      background(images[22]); // sumario
} else if (estado == 23){
      background(images[23]); // travel
      drawTravel();
} else if (estado == 24){ // movie
     background(images[24]);
     drawMovie();
} else if (estado == 25){  // moodchart
    drawMoodChart();
} else if (estado == 26){ // booklist
    background(images[26]);
    drawBookList();
}
}


/*
- Utilizar a função mousePressed()
- Usaremos para alterar qualquer estado, desde que o mouse esteja pressionado...
naquela posição em específico
*/

void mousePressed(){

  if (estado == 0){ // Página inicial
    if (mouseX > 160 && mouseX < 250 && mouseY > 360 && mouseY < 450) {
        estado = 22; // Play para o sumario
        opening_song.pause();
  } else if (mouseX > 135 && mouseX < 260 && mouseY > 460 && mouseY < 670) {
      estado = 2; // Creditos
      opening_song.pause();
    }
  }
  
   else if (estado == 19){ // Link1
    if (mouseX > 360  && mouseX < 394 && mouseY > 661 && mouseY < 685) {
      estado = 20; // Link2
    } else if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 2; // Créditos
    }
     
  }
  
   else if (estado == 20){ // Link2
    if (mouseX > 11  && mouseX < 46 && mouseY > 658 && mouseY < 683) {
      estado = 19; //Link1
      xp = -150;
    } else if (mouseX > 360  && mouseX < 394 && mouseY > 661 && mouseY < 685){
      estado = 21; // Link3
    }
  }
  
   else if (estado == 21){ // Link3
    if (mouseX > 11  && mouseX < 46 && mouseY > 658 && mouseY < 683) {
      estado = 20; // Link2
    }
  }
  
  else if (estado == 22){ // Sumário
    if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40) {
        estado = 0; // Página inicial
        opening_song.rewind();
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 121 && mouseY < 162){
      estado = 1; // Calendário
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 184 && mouseY < 226){
      estado = 18; //ToDoList
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 247 && mouseY < 289){
      estado = 24; //MovieList
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 309 && mouseY < 352){
      estado = 26; // BookList
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 371 && mouseY < 415){
      estado = 23; //Travel
    } else if (mouseX > 112  && mouseX < 301 && mouseY > 432 && mouseY < 477){
    estado = 15; //Financeiro
    } else if (mouseX > 98  && mouseX < 300 && mouseY > 509 && mouseY < 539){
    estado = 25; // MoodChart
      background(images[25]);
      }
  }
    
  else if (estado == 1){ // Calendário
     if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
       estado = 22; // voltar para pagina inicial
   } else if (mouseX > 50  && mouseX < 140 && mouseY > 50 && mouseY < 150) {
       estado = 3; // janeiro
   } else if (mouseX > 160 && mouseX < 250 && mouseY > 50 && mouseY < 150) {
       estado = 4; // fevereiro
   } else if (mouseX > 260 && mouseX < 360 && mouseY > 50 && mouseY < 150) {
       estado = 5; // março
   } else if (mouseX > 50 && mouseX < 140 && mouseY > 190 && mouseY < 290) {
       estado = 6; // abril
   } else if (mouseX > 160 && mouseX < 250 && mouseY > 190 && mouseY < 290) {
       estado = 7; // maio
   } else if (mouseX > 260 && mouseX < 360 && mouseY > 190 && mouseY < 290) {
       estado = 8; // junho
   } else if (mouseX > 50 && mouseX < 140 && mouseY > 330 && mouseY < 420) {
       estado = 9; // julho
   } else if (mouseX > 160 && mouseX < 250 && mouseY > 330 && mouseY < 420) {
       estado = 10; // agosto
   } else if (mouseX > 260 && mouseX < 360 && mouseY > 330 && mouseY < 420) {
       estado = 11; // setembro
   } else if (mouseX > 50 && mouseX < 140 && mouseY > 450 && mouseY < 540) {
       estado = 12; // outubro
   } else if (mouseX > 160 && mouseX < 250 && mouseY > 450 && mouseY < 540) {
       estado = 13; // novembro
   } else if (mouseX > 260 && mouseX < 360 && mouseY > 450 && mouseY < 540) {
       estado = 14; // dezembro
  }
 }
  
  else if (estado == 2){ // Créditos
    if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40) {
      estado = 0;
      opening_song.rewind();
    } else if (mouseX > 20 && mouseX < 125 && mouseY > 661 && mouseY < 681){
     estado = 19;
    }
  }  
  else if (estado == 3){ // janeiro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }  
   else if (estado == 4){ // fevereiro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
   else if (estado == 5){ // março
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }  
   else if (estado == 6){ // abril
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }  
   else if (estado == 7){ // maio
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
   else if (estado == 8){ // junho
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
   else if (estado == 9){ // julho
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
  else if (estado == 10){ // agosto
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
  else if (estado == 11){ // setembro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
  else if (estado == 12){ // outubro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
  else if (estado == 13){ // novembro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
  else if (estado == 14){ // dezembro
    if (mouseX > 8  && mouseX < 100 && mouseY > 8 && mouseY < 30) {
      estado = 1;
    }
  }
   
  else if (estado == 18){ // ToDoList
   if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 22; // Sumário
   }
   
  }
  
  else if (estado == 23){// Travel
   if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 22; // Sumário
   } 
  }
  
  else if (estado == 15){ // Financeiro
   if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 25){
      estado = 22; // Sumário
   }     
  }
  
  else if (estado == 24){ 
   if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 22; // Sumário
   }
  }
  
  else if (estado == 25){
   if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 22;
   }else if (mouseX >= 60 && mouseX < 270 && mouseY >= 90 && mouseY < 610) {
      drawEllipse = true;
     // alterne entre azul, cinza e verde
      if (cor == color(0, 0, 255)) {
        cor = color(128, 128, 128); // cinza
      } else if (cor == color(128, 128, 128)) {
        cor = color(0, 128, 0); // verde
      } else {
        cor = color(0, 0, 255); // azul
      }
  }

  }
  
  else if (estado == 26){
    if (mouseX > 5  && mouseX < 130 && mouseY > 5 && mouseY < 40){
      estado = 22;
  }
}
}
 

/*
- Utilizaremos a função movieEvent()
- Servirá para executar um loop infinito do vídeo da página
*/
void movieEvent(Movie m) {
  for (int i = 0; i < movies.length; i++) {
    if (m == movies[i]) {
      m.read();
    }
  }
}
