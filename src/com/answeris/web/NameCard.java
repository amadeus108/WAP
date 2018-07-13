package com.answeris.web;

import java.awt.*;
import java.awt.image.*;
import java.io.*;

import javax.imageio.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NameCard
 */
@WebServlet("/namecard.png")
public class NameCard extends HttpServlet {
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OutputStream os =  response.getOutputStream();
		
		File file = new File("/‎⁨⁩user⁩/⁨jamesjoo⁩/⁨git/⁨WAP⁩/res/bg-namecard1.jpg");
		
		BufferedImage bg = ImageIO.read(file);
		Graphics g = bg.getGraphics();
		g.drawImage(bg, 0, 0, null);
		g.drawString("asdfasd", 50, 50);
		
		ImageIO.write(bg,"jpg", os);
		os.close();
		
		
		
	}

}
