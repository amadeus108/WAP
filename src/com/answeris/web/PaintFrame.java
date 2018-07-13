package com.answeris.web;

import java.awt.*;

public class PaintFrame extends Frame{

	private SketchBook sketchBook;
	
	public PaintFrame() {
		sketchBook = new SketchBook();
		add(sketchBook);
		setSize(500, 300);
		
		
	}
}
