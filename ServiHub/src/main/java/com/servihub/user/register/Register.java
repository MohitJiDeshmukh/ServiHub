package com.servihub.user.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/abc")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String userType = request.getParameter("userType");
		String mobile = request.getParameter("contact");
		String password = request.getParameter("pass");
		String cpassword = request.getParameter("cpass");

		Connection conn = null;
		PreparedStatement stmt = null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servihub", "root", "root");
			stmt = conn.prepareStatement(
					"insert into user_registration(name, email, address, user_type, contact,password) values(?,?,?,?,?,?)");

			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, address);
			stmt.setString(4, userType);
			stmt.setString(5, mobile);
			stmt.setString(6, password);

			// Execute the query
			int rowsAffected = stmt.executeUpdate();

			if (rowsAffected > 0) {

				if ("customer".equals(userType)) {
					response.sendRedirect("/ServiHub/User/UserHomePage.jsp");
				} else if ("professional".equals(userType)) {
					response.sendRedirect("/ServiHub/Professional/ProfessionalHomePage.jsp");
				}
			}

			else {
				out.println("<h2>Registration Failed</h2>");
				out.println("<p>Failed to register user. Please try again.</p>");
			}
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			out.println("<h2>Registration Failed</h2>");
			out.println("<p>Failed to register user. Please try again.</p>");
		} finally {
			// Close resources
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

}
