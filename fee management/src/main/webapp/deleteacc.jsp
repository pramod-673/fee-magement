<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>delete</title>
</head>
<body>
    
    
    <% 
    String JDBC_URL = "jdbc:mysql://localhost:3306/fee";
    String USERNAME = "root";
    String PASSWORD = "Pramod@2003";

    String usernameToDelete = request.getParameter("rt");
       
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        
        String sql = "DELETE FROM accountant WHERE name= ?";
        
        PreparedStatement pst = con.prepareStatement(sql);
        
        pst.setString(1, usernameToDelete);
        
        int rowsAffected = pst.executeUpdate();
        pst.close();
        con.close();
        
        if (rowsAffected > 0) {
            out.println("Record deleted successfully!");
        } else {
            out.println("No record found with the specified username.");
        }
    } catch(Exception ex) {
        out.println("Error: " + ex.getMessage());
    }
    %>
</body>
</html>
