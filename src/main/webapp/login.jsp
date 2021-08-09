<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College App - Authentication</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

<%
    String msg = (String) request.getAttribute("message");
%>

<div class="container">
    <%if(msg != null){%>
    <div class="alert alert-danger">
        <strong>Danger!</strong> <%=msg%>
    </div>
    <%}%>

    <h2>Authentication</h2>
    <form action="login" method="post">

        <div class="form-group">
            <label>Email:</label>
            <input value="renan.marcilio@test.com" type="email" class="form-control" placeholder="Enter your email"
                   name="email">
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input value="renan.marcilio@test.com" type="password" class="form-control" placeholder="Enter your password"
                   name="password">
        </div>

        <button type="submit" class="btn btn-default">Register</button>
    </form>
</div>

</body>
</html>