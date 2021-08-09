<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College App - Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Student Registration</h2>
    <form action="student" method="post">

        <div class="form-group">
            <label>Name:</label>
            <input value="Renan Marcilio" type="text" class="form-control" placeholder="Enter your name" name="name">
        </div>

        <div class="form-group">
            <label>Age:</label>
            <input value="32" type="text" class="form-control" placeholder="Enter your age" name="age">
        </div>

        <div class="form-group">
            <label>Monthly Fee:</label>
            <input value="772" type="number" class="form-control" placeholder="Enter your monthly fee"
                   name="monthlyPayment">
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input value="renan.marcilio@test.com" type="email" class="form-control" placeholder="Enter your email"
                   name="email">
        </div>

        <div class="form-group">
            <label>Category:</label>
            <div class="radio">
                <label><input type="radio" name="category" value="G">Graduation</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="category" value="E">Specialization</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="category" value="M">Master's Degree</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="category" value="D">Doctorate Degree</label>
            </div>
        </div>

        <div class="form-group">
            <label>Region:</label>
            <select class="form-control" name="region">
                <option>North</option>
                <option>North East</option>
                <option>South</option>
                <option>South East</option>
                <option>Midwest</option>
            </select>
        </div>

        <div class="form-group">
            <label>Subjects:</label>
            <label class="checkbox-inline"><input name="subjects" type="checkbox" value="Java">Java</label>
            <label class="checkbox-inline"><input name="subjects" type="checkbox" value="Javascript">Javascript</label>
            <label class="checkbox-inline"><input name="subjects" type="checkbox" value="Python">Python</label>
        </div>

        <button type="submit" class="btn btn-default">Register</button>
    </form>
</div>

</body>
</html>