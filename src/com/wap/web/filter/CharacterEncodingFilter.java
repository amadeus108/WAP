package com.wap.web.filter;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;

@WebFilter(urlPatterns="/*",initParams= {
		@WebInitParam(name="encoding", value = "UTF-8")
})
public class CharacterEncodingFilter implements Filter{

	private String encoding = "UTF-8";
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		chain.doFilter(request, response); //이때 서블릿이 실행된다.
		
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		encoding = filterConfig.getInitParameter("encoding");
	}

}
