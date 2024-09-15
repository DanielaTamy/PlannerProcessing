// Desenvolvedora: Maria Fernanda Golçalves Cordeiro


//o conteúdo da página é bem simpificado e utilizado repetidas vezes, nós tinhamos a ideia de fazer com que ele fosse editado na apresentação,
//sendo uma caixa vazia na imagem que alterava de acordo com o usuario, mas devio ao tempo, nos optamos por mostrar uma simulação com textos predefinidos.


//simulação de como ficaria a página finanças:

/*
- Utilizaremos a função draw_financeiro()
- Usaremos o primeiro fill e text para ESRNINGS ENTRY
- Usaremos o segundo fill e text para SPEDING
- Usaremos o terceiro fill e text para FINANCIAL RESERVE
*/

void drawFinanceiro(){
  
   //data ESRNINGS ENTRY
  fill(0);
  textSize(14);
  text("04/05", 30, 165);
  text("07/05", 30, 192);
  text("11/05", 30, 218);
  
  //descrição ESRNINGS ENTRY
  fill(0);
  text("salário", 105, 165);
  text("50tinha da vó", 84, 192);
  text("rua", 112, 218);
  
  //valor ESRNINGS ENTRY
  fill(0);
  text("R$ 1.320", 173, 165);
  text("R$ 50", 182, 192);
  text("R$ 2", 184, 218);
  
  
  
  //data SPENDING
  fill(0);
  text("05/05", 28, 330);
  text("07/05", 28, 357);
  text("08/05", 28, 384);
  text("11/05", 28, 410);
  
  //descrição SPENDING
  fill(0);
  text("aluguel", 100, 330);
  text("comida", 97, 357);
  text("RP", 110, 384);
  text("jantou fora", 90, 410);
  
  //valor SPENDING
  fill(0);
  text("R$ 800", 176, 330);
  text("R$ 350", 176, 357);
  text("R$ 70", 178, 384);
  text("R$ 84", 178, 410);
  
  
  //descrição FINANCIAL RESERVE
  fill(0);
  text("poupança", 75, 512);
  text("previdência privada", 52, 537);
  
  //valor FINANCIAL RESERVE
  fill(0);
  text("R$ 3874", 173, 512);
  text("R$ 14.079", 168, 537); 
}
