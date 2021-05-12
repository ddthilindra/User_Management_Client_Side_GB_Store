package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;


@WebServlet("/UserUpdateAPI")
public class UserUpdateAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	User userObj = new User();
    
    public UserUpdateAPI() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//System.out.println("uUpdate req API called");
		HttpSession session = request.getSession();
		String[] authStatus = userObj.updateReq(request.getParameter("txtEmail"));
		String output = "authStatus";

		if (authStatus[0].equals("success")) {
			String id=authStatus[1];
			String Name=authStatus[2];
			String Email=authStatus[3];
			String Address=authStatus[4];
			String PhoneNo=authStatus[5];
			String Dob=authStatus[6];
			output = "{\"status\":\"success\", \"id\": \""+id+"\", \"name\": \""+Name+"\", \"email\": \""+Email+"\", \"add\": \""+Address+"\", \"phone\": \""+PhoneNo+"\", \"dob\": \""+Dob+"\"}";

		} else {
			output = "{\"status\":\"error\", \"data\": \"" + authStatus + "\"}";
		}
		response.getWriter().write(output);
	}

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("uUpdate API called");
		Map paras = getParasMap(request);
		String output = userObj.updateUser(paras.get("Id").toString(), paras.get("Name").toString(),
				paras.get("Email").toString(), paras.get("Add").toString(), paras.get("Phone").toString(), paras.get("Dob").toString(), paras.get("password").toString());
		response.getWriter().write(output);
	}

	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("delete API called");
		Map paras = getParasMap(request);
		String output = userObj.deleteUser(paras.get("Id").toString());
		response.getWriter().write(output);
	}
	
	private static Map getParasMap(HttpServletRequest request) 
	{
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			scanner.close();
			String[] params = queryString.split("&");
			for (String param : params) {
				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e) {
		}
		return map;
	}	

}
