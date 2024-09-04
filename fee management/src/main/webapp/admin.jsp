<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
    String username = request.getParameter("t1"); %>
   <% String password = request.getParameter("pwd");%>
        
   <% if ("admin".equals(username) && "admin".equals(password)) {
        // Redirect to acc.html if username and password are both "admin"
        response.sendRedirect("choose.html");
    } else {
          // If username and password are not "admin", display login result
    }
%>

</body>
</html>