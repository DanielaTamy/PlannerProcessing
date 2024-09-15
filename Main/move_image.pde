void drawImage(int xp, int yp){
  
  triangle(xp - 5, yp, xp - 100, yp - 170, xp - 110, yp); // orelha esq
  triangle(xp + 110, yp, xp + 120, yp - 170, xp - 20, yp); // orelha dir
  circle(xp, yp, 220); // rosto
  fill(0);
  circle(xp - 50, yp - 20, 50); // olho esq
  circle(xp + 50, yp - 20, 50); // olho dir
  fill(250, 202, 225);
  triangle(xp - 20, yp + 20, xp - 1, yp + 50, xp + 15, yp + 20); // nariz
  line(xp - 23, yp + 60, xp + 20, yp + 60); // boca 
  
}
