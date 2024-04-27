package com.servihub.user.booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/booking")
public class Booking extends HttpServlet {
    private static final String URL = "jdbc:mysql://localhost:3306/booking_table";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String service = request.getParameter("service");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        insertBooking(name, email, service, date, time);

        response.sendRedirect("confirmation.jsp");
    }

    private void insertBooking(String name, String email, String service, String date, String time) {
        String query = "INSERT INTO booking_table (name, email, service, date, time) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, service);
            preparedStatement.setString(4, date);
            preparedStatement.setString(5, time);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, String>> bookings = getAllBookings();
        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("bookings.jsp").forward(request, response);
    }

    private List<Map<String, String>> getAllBookings() {
        List<Map<String, String>> bookings = new ArrayList<>();
        String query = "SELECT * FROM bookings";
        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Map<String, String> booking = new HashMap<>();
                booking.put("id", String.valueOf(resultSet.getInt("id")));
                booking.put("name", resultSet.getString("name"));
                booking.put("email", resultSet.getString("email"));
                booking.put("service", resultSet.getString("service"));
                booking.put("date", resultSet.getString("date"));
                booking.put("time", resultSet.getString("time"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }
}

