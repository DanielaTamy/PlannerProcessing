void drawMoodChart(){
  if (drawEllipse) {
    fill(cor);
    noStroke();
    ellipse(mouseX, mouseY, 5, 5);
  }
}

void mouseReleased(){
   drawEllipse = false; 
}
