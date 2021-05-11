package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

@WebServlet("/RegisterAPI")
public class RegisterAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	User userObj = new User();

	public RegisterAPI() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("API called"+request.getParameter("txtUsername")+ request.getParameter("txtEmail")+
				request.getParameter("txtAddress")+ request.getParameter("txtPhone")+ request.getParameter("txtDOB")+
				request.getParameter("txtPassword"));
		
		String output = userObj.RegisterUser(request.getParameter("txtUsername"), request.getParameter("txtEmail"),
				request.getParameter("txtAddress"), request.getParameter("txtPhone"), request.getParameter("txtDOB"),
				request.getParameter("txtPassword"));
		response.getWriter().write(output);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
