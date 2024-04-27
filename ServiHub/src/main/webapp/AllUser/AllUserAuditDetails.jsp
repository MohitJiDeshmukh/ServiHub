<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Edit Details</title>

<style>
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

body {
	overflow: hidden; /* This will hide the scrollbar */
}

.hero {
	height: 100%;
	width: 100%;
	background-image: url(images/imgReg.jpg);
	background-position: center;
	background-size: cover;
	position: absolute;
}

.form-box {
	width: 380px;
	height: 480px; /* Adjusted height */
	position: relative;
	margin: 3% auto; /* Adjusted margin for vertical centering */
	background: #fff;
	padding: 5px;
}

.button-box {
	width: 220px;
	margin: 25px auto; /* Adjusted margin */
	position: relative;
	box-shadow: 0 0 20px 9px #ff61241f;
	border-radius: 30px;
}

.toggle-btn {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 100%;
	border-radius: 30px;
	background: rgb(227, 133, 40);
}

.input-field {
	width: 100%;
	padding: 12px 0;
	margin: 15px 0;
	border-top: 0;
	border-bottom: 2px solid rgb(12, 96, 40);
	border-left: 0;
	border-right: 0;
	outline: none;
	background: transparent;
}

.submit-button {
	width: 85%;
	padding: 10px 30px;
	margin: 30px 25px;
	cursor: pointer;
	display: block;
	background: rgb(227, 133, 40);
	border: 0;
	outline: none;
	border-radius: 30px;
	color: white;
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 1px;
	transition: background-color 0.3s ease;
}

.center-field {
	text-align: center;
	width: 100%; /* Added to center-align the last field */
}

.cancel-button {
	display: block;
	width: 85%;
	padding: 10px 30px;
	margin: 25px 25px;
	border: none;
	border-radius: 30px;
	background-color: #115e03;
	color: #fff;
	font-size: 14px;
	cursor: pointer;
}

#heading {
	color: rgb(58, 58, 243);
	box-shadow: 0 0 20px 9px rgb(140, 140, 237);
	text-align: center;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<div class="hero">
		<div class="form-box">
			<form action="" class="input-group" method="post">

				<h1 id="heading">EDIT DETAILS</h1>
				<input type="number" class="input-field" name="id"
					placeholder="Enter ID" value="<%=session.getAttribute("userId")%>" />
				<input type="password" class="input-field" name="Opwd"
					placeholder="Old Password" /> <input type="password"
					class="input-field" name="Npwd" placeholder="Enter New Password" />
				<input type="password" class="input-field" name="Cpwd"
					placeholder="Enter Again New Password" />
				<div class="center-field">
					<button type="submit" name="btn" value="DONE" class="submit-button">Submit</button>

				</div>
			</form>
		</div>
	</div>
</body>
</html>



<%@page import="java.sql.Connection,java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.DriverManager"%>

<%
String btn = request.getParameter("btn");
if (btn != null && btn.equals("DONE")) {
	String idString = request.getParameter("id");
	int id = Integer.parseInt(idString);

	String oldpwd = request.getParameter("Opwd");
	String newpwd = request.getParameter("Npwd");
	String confpwd = request.getParameter("Cpwd");

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servihub", "root", "root");

		// Query to select user data based on id and password
		PreparedStatement st = con.prepareStatement("SELECT * FROM user_registration WHERE id=? AND password=?");
		st.setInt(1, id); // Set the id parameter as an integer
		st.setString(2, oldpwd);

		ResultSet rs = st.executeQuery();
		if (rs.next()) {
	if (newpwd.equals(confpwd)) {
		// Query to update password
		PreparedStatement st1 = con.prepareStatement("UPDATE user_registration SET password=? WHERE id=?");
		st1.setString(1, newpwd);
		st1.setInt(2, id);
		st1.executeUpdate();

		// Determine the user type
		String userType = ""; // You need to fetch this from the database or session

		// Redirect based on user type
		if ("customer".equals(userType)) {
			response.sendRedirect("/ServiHub/User/UserHomePage.jsp");
		} else if ("professional".equals(userType)) {
			response.sendRedirect("/ServiHub/Professional/ProfessionalHomePage.jsp");
		}
	} else {
		 out.println("<p style=\"color: red;\">Old password and new password don't match</p>");
         
	}
		} else {
			  out.println("<p style=\"color: red;\">Incorrect password</p>");
		}
	} catch (SQLException | ClassNotFoundException | NumberFormatException ex) {
		ex.printStackTrace();
		// Handle exceptions
		response.sendRedirect("error.jsp");
	}
}
%>