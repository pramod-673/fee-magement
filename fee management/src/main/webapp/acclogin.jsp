<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("n1");
    String pass = request.getParameter("pwd");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fee", "root", "Pramod@2003");

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from accountant where name='" + user + "' and password='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("username", user);
        response.sendRedirect("addstu.html");
    } else {
        out.println("Invalid username or password <a href='acclogin.html'>try again</a>");
    }
%>

