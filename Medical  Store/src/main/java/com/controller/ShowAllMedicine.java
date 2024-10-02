package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Medicine;
import com.dao.MedicineDAO;

@WebServlet("/viewmed")
public class ShowAllMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getParameter("option");
		MedicineDAO dao = new MedicineDAO();
		
		if(option == null || option.equals("All")) {
			try {
				List<Medicine> medicine = dao.findAll();
				request.setAttribute("medicines", medicine);
				RequestDispatcher dispatcher = request.getRequestDispatcher("viewmed.jsp");
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		else {
			try {
				List<Medicine> medicine = dao.findByType(option);
				request.setAttribute("medicines", medicine);
				RequestDispatcher dispatcher = request.getRequestDispatcher("viewmed.jsp");
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
		}
	}

}
