//Desenvolvedor: Gabriel Berto Beckauser


/*
- Utilizaremos a função drawToDoList()
*/

void drawToDoList(){
  //carregamento de imagens base
  //insersão imagens concluido ou cancelado
  image(images[16],63,61);
  image(images[16],63,94);
  image(images[16],63,125);
  image(images[17],63,158);
  image(images[17],63,190);
  
  //exemplos afazeres
  fill(0);
  textSize(14);
  text("Lavar a louça",84,75);
  text("Passear com o dog",84,105);
  text("Tirar o lixo",84,138);
  text("Passar vassoura na casa",84,169);
  text("Arrumar as camas",84,202);
}
