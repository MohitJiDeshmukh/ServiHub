<%
response.addHeader("Pragma","no-cache");
response.addHeader("Cache-control", "no-store");


if(session == null)
{
    response.sendRedirect("Homepage.jsp");
}
%>