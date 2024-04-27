
package com.servihub.user.login;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	  // Set caching prevention headers
        setNoCacheHeaders(response);
    	
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            UserData userData = new UserData(); // Create an instance of UserData

            // Call the method to fetch user data from the database
            UserData user = userData.getUserDataFromDatabase(email, password);

            if (user != null) {
                // Authentication successful
                // Redirect the user to the home page or any other appropriate page
                String userType = user.getUserType();
                HttpSession session = request.getSession();

                session.setAttribute("userId", user.getId());
                session.setAttribute("userName", user.getName());
                session.setAttribute("userEmail", user.getEmail());
                session.setAttribute("userType", user.getUserType());
                session.setAttribute("userAddress", user.getAddress());
                session.setAttribute("userContact", user.getContact());

                if ("customer".equals(userType)) {
                    response.sendRedirect("/ServiHub/User/UserHomePage.jsp");
                } else if ("professional".equals(userType)) {
                    response.sendRedirect("/ServiHub/Professional/Professional_profile_page.jsp");
                }
            } else { 
            	 response.sendRedirect("/ServiHub/User/LoginUser.jsp?error=invalid");

            	
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            // Handle database connection and query errors
            response.sendRedirect("login.jsp?error=db");
        }
    }
    private void setNoCacheHeaders(HttpServletResponse response) {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
    }
}








