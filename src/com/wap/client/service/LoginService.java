package com.wap.client.service;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.List;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wap.web.entity.Client;

public class LoginService extends HttpServlet{
	private ClientDAO service =new ClientDAO();
     @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	OutputStream os = response.getOutputStream();
    	PrintWriter out = new PrintWriter(os, true);
    	
    	try {
			List<Client> list = service.getClientsList();
			System.out.println(list);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
	
}
