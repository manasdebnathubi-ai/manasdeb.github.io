<%@ page session="true" %>
<%
    if (session.getAttribute("login") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<html>
<head><title>Resume</title></head>
<body>

<h1>Manas Debnath</h1>
<h3>Network Engineer</h3>

<h2>Skills</h2>
<ul>
  <li>Networking</li>
  <li>Firewall (Fortigate, Sophos)</li>
  <li>SD-WAN</li>
</ul>

<a href="logout.jsp">Logout</a>

</body>
</html>
