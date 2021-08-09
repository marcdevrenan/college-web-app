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
    List<Student> students = (List<Student>) request.getAttribute("studentList");
%>

<div class="container">
    <form action="student" method="get">
        <button type="submit" class="btn btn-default" name="screen" value="studentList">Add New</button>
    </form>
    <h3>Number of existing students: <%=students.size()%>!</h3>
    <hr>
    <table class ="table table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
            <th>Category</th>
            <th>Region</th>
        </tr>
    </thead>
    <tbody>
    <%for (Student s : students) {%>
        <tr>
            <td><%=s.getName()%></td>
            <td><%=s.getEmail()%></td>
            <td><%=s.getAge()%></td>
            <td><%=s.getCategory()%></td>
            <td><%=s.getRegion()%></td>
        </tr>
    <%}%>
    </tbody>
    </table>
    <form action="student" method="get">
        <button type="submit" class="btn btn-default">Back</button>
    </form>
</div>

</body>
</html>