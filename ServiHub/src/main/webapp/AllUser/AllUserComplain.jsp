<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager" %>

<%

    String title = request.getParameter("complaintype");
    String description = request.getParameter("description");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servihub", "root", "root");
    PreparedStatement st = con.prepareStatement("insert into complain(complaintype,description) values(?,?)");
    
    st.setString(1, title);
    st.setString(2, description);

    st.executeUpdate();
    con.close();
  
%>





<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Complaint</title>
    <style>
      body {
        overflow: hidden; /* This will hide the scrollbar */
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url("https://wallpapercave.com/wp/zDYLPf9.jpg");
        background-repeat: no-repeat;
      }
      .container {
        width: 1100px;
        display: flex;
        background-color: white;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        overflow: hidden;
      }
      .image-side {
        flex: 1;
        background-image: url("your-image.jpg");
        background-size: cover;
        background-position: center;
      }
      .form-side {
        flex: 1;
        padding: 30px;
      }
      .form-container {
        max-width: 400px;
        margin: auto;
      }
      .form-container h1 {
        text-align: center;
        color: #333;
      }
      .form-container label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
      }
      .form-container input[type="text"],
      .form-container input[type="email"],
      .form-container textArea,
      .form-container select,
      .form-container input[type="password"] {
        width: 90%;
        padding: 5px;
        margin-bottom: 4px;
        border-radius: 5px;
        border: none;
        background-color: #f2f2f2;
        font-size: 16px;
        color: #333;
      }
      .form-container input[type="text"]:focus,
      .form-container input[type="email"]:focus,
      .form-container input[type="password"]:focus {
        outline: none;
        border: 2px solid #3498db;
      }
      .form-container input[type="submit"] {
        width: 85%;
        padding: 10px 30px;
        margin: 30px 0;
        cursor: pointer;
        display: block;
        background: rgb(227, 133, 40);
        border: 0;
        outline: none;
        border-radius: 30px;
      }
      
      .button {
        width: 85%;
        display: block;
        padding: 10px 30px;
        margin: 25px 0;
        border: none;
        border-radius: 30px;
        background-color: #115e03;
        color: #fff;
        font-size: 14px;
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="image-side">
        <img
          src="/ServiHub/assets/images/img2.png"
          height="350"
          width="350"
          style="background-color: transparent; padding: 80px"
        />
      </div>
      <div class="form-side">
        <div class="form-container">
          <h2>File your complaint here:</h2>
          <form action="" >
            <table cellspacing="5">
              <tr>
                <td>
                  <label for="complaintid">Your ID Is :</label>
                  <input
                    type="text"
                    style="width: 160%"
                    class="form-control"
                    name="complaintid"
                    value="<%=session.getAttribute("userId") %>"
                    required
                  />
                </td>
              </tr>

              <tr>
                <td>
                  <label>Reason :</label>
                  <input
                    type="text"
                    style="width: 160%"
                    class="form-control"
                    name="complaintype"
                    required
                  />
                </td>
              </tr>

              <tr>
                <td>
                  <label for="description"
                    >Complaint Descripton :</label
                  >
                  <textarea
                    class="form-control"
                    style="width: 160%"
                    name="description"
                    rows="8"
                    cols="20"
                  ></textarea>
                </td>
              </tr>

              <tr>
                <td>
                  <input type="submit" style="width: 185%" value="Submit" />
                </td>
              </tr>
            </table>
          </form>

        </div>
      </div>
    </div>
  </body>
</html>
