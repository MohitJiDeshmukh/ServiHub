
<%@page
	import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager , java.sql.ResultSet,java.util.ArrayList"%>

<%
ArrayList list1 = new ArrayList();
ArrayList list2 = new ArrayList();

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	PreparedStatement st = con.prepareStatement("select * from adminprofile");
	ResultSet rs = st.executeQuery();


	while (rs.next()) {
		list1.add(rs.getString(2));
		list2.add(rs.getString(3));

	}
} catch (Exception e) {
	e.printStackTrace();
}
%>



<%@include file="Security.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image:
		url('https://static.vecteezy.com/system/resources/previews/002/597/662/original/abstract-light-blue-and-green-gradient-background-with-diagonal-stripe-lines-and-texture-modern-and-simple-pastel-banner-design-you-can-use-for-business-presentation-poster-template-eps10-vector.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
}

a:hover {
	background-color: cyan;
	border-radius: 10px;
}

a {
	text-decoration: none;
	color: black;
	padding: 10px;
}

.sborder {
	border: 1px solid black;
	border-collapse: collapse;
	border-radius: 10px;
	background-color: #00cccc;
	font-size: 20px;
	padding-bottom: 5px;
}

.rborder {
	border: 1px solid black;
	padding: 10px;
}
</style>

<title>Admin's Homepage</title>
</head>



<body>

	<table width="100%"
		style="display: flex; height: 65px; background-color: white; border-radius: 8px; padding: 6px">
		<tr>
			<td><img src="images/Servi_Wave_logo.png"
				style="height: 40px; width: 140px; padding: 5px"></td>
			<td>
			<td><a href="alluserauditdetails.jsp">Settings</a></td>
			</td>
			<td><a href="CreateOperator2.jsp">Create Operator</a></td>
			<td><a href="DeleteOperator2.jsp">Delete Operator</a></td>
			<td>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
				<button
					style="border: none; height: 40px; background-color: cyan; border-radius: 10px">
					<a style="text-decoration: none; padding: 10px; color: black;"
						href="DestroySession.jsp">Logout</a>
				</button>
			</td>

		</tr>

	</table>

	<h1>Currently working Complaint Operators -</h1>
	<br>
	<br>
	<table align="center"
		style="background-color: white; border-radius: 10px; width: 80%">

		<tr align="center">
			<td class="sborder">Name</td>
			<td class="sborder">email</td>

			<td class="sborder">Show Detail Profile</td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<%
		for (int i = 0; i < list1.size(); i++) {
		%>
		<tr align="center">
			<td class="rborder"><%=list1.get(i)%></td>
			<td class="rborder"><%=list2.get(i)%></td>
			<td class="rborder" style="background-color: lightgrey;"><a
				href="ComplaintReply.jsp">Show Id </a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
