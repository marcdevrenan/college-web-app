<%@ page import="br.edu.infnet.model.domain.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College App - Confirmation</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

<%
    String name = (String) request.getAttribute("studentName");
%>

<div class="container">
    <h2>The student <%=name%> was successfully registered!</h2>
    <hr>
    <form action="student" method="get">
        <button type="submit" class="btn btn-default">Back</button>
    </form>
</div>

</body>
</html>