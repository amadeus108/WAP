package com.answeris.web;

import java.awt.*;

public class SketchBook extends Canvas {
	
     private Image bg1;
     public SketchBook() {
		bg1 = Toolkit.getDefaultToolkit().getImage("res/bg-namecard1.jpg");
		
	}
     
	
	@Override
	public void paint(Graphics g) {
		
		g.drawImage(bg1, 0, 0, this);
		g.drawLine(0, 0, 200, 200);
		g.drawString("Hello ", 50, 50);
		
	
	}

}
