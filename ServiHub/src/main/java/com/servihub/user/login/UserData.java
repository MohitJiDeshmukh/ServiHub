package com.servihub.user.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserData {
    private int id;
    private String name;
    private String email;
    private String address;
    private String userType; // Changed from user_type to userType
    private String contact;
    private String password;

    // Constructor, getters, and setters

    // Constructor
    
    public UserData(int id, String name, String email, String address, String userType, String contact, String password) {
    	 this.id = id;
         this.name = name;
         this.email = email;
         this.address = address;
         this.userType = userType; 
         this.contact = contact;
         this.password = password;
	}

	public UserData() {
		// TODO Auto-generated constructor stub
	}

	// Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) { // Changed from user_type to userType
        this.userType = userType;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Method to retrieve user data from the database
    public UserData getUserDataFromDatabase(String email, String password) throws SQLException, ClassNotFoundException {
        // Initialize UserData object to null
        UserData userData = null;

        // Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost:3306/servihub";
        String dbUsername = "root";
        String dbPassword = "root";
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword)) {
            // Prepare SQL statement to retrieve user data
            String sql = "SELECT * FROM user_registration WHERE email=? AND password=?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, email);
                stmt.setString(2, password);

                // Execute query
                try (ResultSet rs = stmt.executeQuery()) {
                    // If user exists, populate UserData object with retrieved data
                    if (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String email1 = rs.getString("email");
                        String address = rs.getString("address");
                        String userType = rs.getString("user_type");
                        String contact = rs.getString("contact");
                        String password1 = rs.getString("password");
                        // Get other columns as needed

                        // Create UserData object with retrieved data
                        userData = new UserData(id, name, email, address, userType, contact, password);
                    }
                }
            }
        }

        // Return UserData object (may be null if user not found or password is incorrect)
        return userData;
    }
    
    public String toString() {
        return "User [id=" + id + ", name=" + name + ", email=" + email + ", address=" + address + ", userType=" + userType
                + ", contact=" + contact + ", password=" + password + "]";
    }
}
