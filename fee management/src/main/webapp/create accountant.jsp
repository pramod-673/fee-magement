<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Database Connectivity Demo</title>
</head>
<body>
    <h1>Database Connectivity Demo</h1>
    
    <% 
    String JDBC_URL = "jdbc:mysql://localhost:3306/fee";
    String USERNAME = "root";
    String PASSWORD = "Pramod@2003";

    // Retrieve form parameters
    String name = request.getParameter("t1");
    String pass = request.getParameter("p1");
    String email = request.getParameter("e1");
    String contact = request.getParameter("n1");
    String addr = request.getParameter("add");
       
    // Method to establish database connection and insert data
    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Establish connection
        Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        
        // Prepare SQL statement with parameter placeholders
        String sql = "INSERT INTO accountant (name, password, email, contact, address) VALUES (?, ?, ?, ?, ?)";
        
        // Create prepared statement
        PreparedStatement pst = con.prepareStatement(sql);
        
        // Set parameter values
        pst.setString(1, name);
        pst.setString(2, pass);
        pst.setString(3, email);
        pst.setString(4, contact);
        pst.setString(5, addr);
        
        // Execute the insert statement
        pst.executeUpdate();
        
        // Close resources
        pst.close();
        con.close();
        
        out.println("Data inserted successfully!");
    } catch(Exception ex) {
        out.println("Error: " + ex.getMessage());
    }
    %>
</body>
</html>
