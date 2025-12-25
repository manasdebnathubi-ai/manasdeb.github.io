<%@ page session="true" %>
<%
    String error = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if ("manas".equals(user) && "12345".equals(pass)) {
            session.setAttribute("login", "yes");
            response.sendRedirect("resume.jsp");
            return;
        } else {
            error = "Invalid login";
        }
    }
%>

<html>
<head><title>Login</title></head>
<body>
<h2>Resume Login</h2>

<form method="post">
  Username: <input name="username"><br><br>
  Password: <input type="password" name="password"><br><br>
  <button type="submit">Login</button>
</form>

<p style="color:red;"><%= error %></p>
</body>
</html>
