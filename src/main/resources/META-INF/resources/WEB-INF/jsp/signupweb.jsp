<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign INPage</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<form:form modelAttribute="UserAccount" method="post">
		<fieldset class="mb-3">
			<form:label path="email">
				Enter Email Id: 
				<form:input path="email" type="email" requried="true"/>
			</form:label>
		</fieldset>
		
		<fieldset class="mb-3">
			<form:label path="password">
				Enter password: 
				<form:input path="password" type="text" requried="true"/>
			</form:label>
		</fieldset>
		
		<fieldset class="mb-3">
			<form:label path="username">
				Enter Username: 
				<form:input path="username" type="text"/>
			</form:label>
		</fieldset>
		
		<fieldset class="mb-3">
			<form:label path="dob">
				Enter Date Of Birth:
				<form:input path="dob" type="date"/>
			</form:label>
		</fieldset>
		
		<fieldset class="mb-3">
			Enter Your profile URL (optional):
			<form:label path="image">
				<form:input path="image" type="text"/>
			</form:label>
		</fieldset>
		
		<fieldset class="mb-3">
			Enter your short video (optional):
			<form:label path="video">
				<form:input path="video" type="text"/>
			</form:label>
		</fieldset>
		<button type="submit">Submit</button>
	</form:form>
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
    <title>Sign In Page</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 40px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: bold;
        }
        .form-control {
            margin-top: 5px;
        }
        .btn-submit {
            margin-top: 20px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
        }
        .btn-exit {
            background-color: #000;
            color: #fff;
            border: none;
        }
        .btn-exit:hover {
            background-color: #333;
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
        <h2 class="text-center mb-4">Sign In</h2>
        <form:form modelAttribute="UserAccount" method="post">
            <!-- Email -->
            <div class="form-group mb-3">
                <form:label path="email" class="form-label">Enter Email Id:</form:label>
                <form:input path="email" type="email" required="true" class="form-control" placeholder="name@example.com"/>
            </div>
            
            <!-- Password -->
            <div class="form-group mb-3">
                <form:label path="password" class="form-label">Enter Password:</form:label>
                <form:input path="password" type="password" required="true" class="form-control" placeholder="********"/>
            </div>
            
            <!-- Username -->
            <div class="form-group mb-3">
                <form:label path="username" class="form-label">Enter Username:</form:label>
                <form:input path="username" type="text" class="form-control" placeholder="Your username"/>
            </div>
            
            <!-- Date of Birth -->
            <div class="form-group mb-3">
                <form:label path="dob" class="form-label">Enter Date Of Birth:</form:label>
                <form:input path="dob" type="text" class="form-control datepicker" placeholder="YYYY-MM-DD"/>
            </div>
            
            <!-- Profile Image URL -->
            <div class="form-group mb-3">
                <form:label path="image" class="form-label">Enter Your Profile URL (optional):</form:label>
                <form:input path="image" type="url" class="form-control" placeholder="https://example.com/image.jpg"/>
            </div>
            
            <!-- Video URL -->
            <div class="form-group mb-3">
                <form:label path="video" class="form-label">Enter Your Short Video URL (optional):</form:label>
                <form:input path="video" type="url" class="form-control" placeholder="https://example.com/video.mp4"/>
            </div>
            
            <!-- Button Row -->
            <div class="btn-container">
                <button type="submit" class="btn btn-primary">Submit</button>
                <a href="loginrequest" class="btn btn-exit">Exit</a>
            </div>
        </form:form>
    </div>

    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function(){
            // Initialize the date picker
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                todayHighlight: true
            });
        });
    </script>
</body>
</html>
