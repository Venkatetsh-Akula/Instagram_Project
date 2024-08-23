<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Page</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form:form method="post" >
			<fieldset class="mb-3">
				<label>Enter the UserName:
				<input type="text" name="username">
				</label>
			</fieldset>	
			<fieldset class="mb-3">
				<label>Enter the password:
				<input type="text" name="password">
				</label>
			</fieldset>
			<button type="submit" class="mb-3">Submit</button>
			<fieldset class="mb-3">
				<label> <pre class="alert alert-danger text-center" />${msg} New To Instagram:<a href="signuprequest">SignUp Here</a></label>
			</fieldset>
		</form:form>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #e9ecef;
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            width: 100%;
            max-width: 400px;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        .form-group {
            margin-bottom: 25px;
        }
        .form-control {
            height: 45px;
            padding: 10px;
            font-size: 15px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            transition: border-color 0.3s ease;
        }
        .form-control:focus {
            border-color: #80bdff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.25);
        }
        .btn {
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }
        .alert {
            display: none; /* Hidden by default */
            padding: 10px;
            font-size: 15px;
            color: #721c24;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
        }
        .alert.alert-show {
            display: block; /* Show alert when an error message exists */
        }
        .signup-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }
        .signup-link a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .signup-link a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
<!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">My Application</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="scrollrequest">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profilerequest">profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="signuprequest">SignUp New User</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="loginrequest">logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <h3 class="text-center mb-4">Login to Instagram</h3>
        <form:form method="post">
            <div class="form-group">
                <label for="username" class="form-label">Username:</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn">Login</button>
            <c:if test="${not empty msg}">
                <p class="alert alert-show">${msg}</p>
            </c:if>
            <div class="signup-link">
                <p>New to Instagram? <a href="signuprequest">Sign up here</a></p>
            </div>
        </form:form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
