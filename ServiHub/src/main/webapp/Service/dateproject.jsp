<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Service</title>
<link rel="stylesheet" href="styles.css">
<!-- Link to your CSS file for styling -->
</head>
<style>
/* styles.css */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	overflow: hidden; /* Prevent scrolling */
}

.container {
	width: 100%;
	max-width: 600px; /* Adjust as needed */
	margin: 0 auto;
	padding: 20px;
	text-align: center; /* Center align the content */
}

.heading {
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 20px;
	text-align: left;
}

input[type="text"], input[type="email"], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
<body>
	<div class="container">
		<h1 class="heading">Booking Page</h1>
		<form action="" method="post">
			<!-- Form action to submit data to the backend -->
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>

			
			<div class="form-group">
				<label for="mobile">Mobile Number:</label> <input type="text"
					id="mobile" name="contact" required>
			</div>
			<div class="form-group">
				<label for="service">Service:</label> <select id="service"
					name="service">
					<option value="electrician">Electrician</option>
					<option value="plumber">Plumber</option>
					<option value="electrician">AC REPAIR</option>
					<option value="electrician">CARPENTER</option>
					<option value="electrician">PAINTER</option>
					<option value="electrician">PEST CONTROL</option>
					<option value="electrician">WATER PURIFIER</option>
					<!-- Add more options for different services -->
				</select>
			</div>

			<div class="form-group">
				<label for="date">Date:</label> <input type="date" id="date"
					name="date" required>
			</div>

			<div class="form-group">
				<label for="time">Time:</label> <input type="time" id="time"
					name="time" required>
			</div>

			<input type="submit" value="Book Service" class="btn btn-primary">
		</form>
	</div>
</body>
</html>



<%@page
	import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager, java.sql.SQLException"%>

<%
// Java logic code to store booking details in the database
String name = request.getParameter("name");
String contact = request.getParameter("contact");
String service = request.getParameter("service");
String date = request.getParameter("date");
String time = request.getParameter("time");

// Database connection details
String dbUrl = "jdbc:mysql://localhost/servihub";
String dbUser = "root";
String dbPassword = "root";

// Connect to the database and store the booking details
try {
	// Register the JDBC driver
	Class.forName("com.mysql.cj.jdbc.Driver");

	// Create a connection to the database
	Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

	// Prepare and execute the SQL query to insert the booking details
	String insertQuery = "INSERT INTO booking_table (name, contact, service, date, time) VALUES (?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(insertQuery);
	pstmt.setString(1, name);
	pstmt.setString(2, contact);
	pstmt.setString(3, service);
	pstmt.setString(4, date);
	pstmt.setString(5, time);
	pstmt.executeUpdate();

	// Close the database connection
	pstmt.close();
	conn.close();
	
	
} catch (ClassNotFoundException e) {
	out.println("Error loading JDBC driver: " + e.getMessage());
} catch (SQLException e) {
	out.println("An error occurred while storing the booking details. Please try again later.");
	e.printStackTrace(); // Print the exception details for debugging
}
%>

