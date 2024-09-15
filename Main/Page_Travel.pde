//Desenvolvedor: Henrique De Conti

//Parte do planner que é para organizar suas futuras viagens.

/*
- Utilizaremos a função drawTravel()
*/


//Imagem
void drawTravel(){
  //Lista das viagens
  fill(0);
  textSize(14);
  image(images[16], 63, 60); // Concluido
  image(images[17], 63, 95); // Cancelado
  image(images[16], 63, 125); // Concluido
  image(images[17], 63, 156); // Cancelado
  image(images[16], 63, 190); // Concluido
  image(images[16], 63, 222); // Concluido
  text("São Paulo, Dia 26/05", 90, 78);
  text("Rio de janeiro, Dia 19/07", 90,110);
  text("Fernando de Noronha, Dia 23/07",90,142);
  text("Foz do Iguaçu, Dia 04/09",90,174);
  text("Curitiba, Dia 20/12",90,206);
  text("Florianópolis, Dia 29/12",90,238);
}
