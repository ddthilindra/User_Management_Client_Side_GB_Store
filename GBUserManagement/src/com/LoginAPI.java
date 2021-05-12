package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

@WebServlet("/LoginAPI")
public class LoginAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	User userObj = new User();

	public LoginAPI() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		System.out.println("API called");
		HttpSession session = request.getSession();
		String[] authStatus = userObj.loginUser(request.getParameter("txtUsername"),
				request.getParameter("txtPassword"));
		String output = "authStatus";

		if (authStatus[1].equals("success")) {
			if (authStatus[0].equals("customer")) {
				System.out.println("customer");
				output = "{\"status\":\"success\", \"data\": \"cus\"}";
				session.setAttribute("Id", authStatus[2]);
				session.setAttribute("Username", authStatus[3]);
				session.setAttribute("Email", authStatus[4]);
			} else if (authStatus[0].equals("admin")) {
				System.out.println("admin");
				output = "{\"status\":\"success\", \"data\": \"adm\"}";
				session.setAttribute("Id", authStatus[2]);
				session.setAttribute("Username", authStatus[3]);
				session.setAttribute("Email", authStatus[4]);
			}

		} else {
			output = "{\"status\":\"error\", \"data\": \"" + authStatus + "\"}";
		}
		response.getWriter().write(output);

	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
