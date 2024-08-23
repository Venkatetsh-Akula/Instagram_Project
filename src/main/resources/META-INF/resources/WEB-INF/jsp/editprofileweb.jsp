<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form:form modelAttribute="UserAccount" metod="post">
			<fieldset class="mb-3">
				<form:label path="id">
					<form:input type="hidden" path="id"/>			
				</form:label>
			</fieldset> 
			<fieldset class="mb-3">
				<form:label path="email">Enter the email:
					<form:input type="email" path="email"/>
				</form:label>
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="password">Enter the password:
					<form:input type="text" path="password"/>
				</form:label>
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="username">Enter the username:
					<form:input type="text" path="username"/>
				</form:label>
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="dob">Enter the date of birth:
					<form:input type="date" path="dob"/>
				</form:label>
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="image">Enter the image url:
					<form:input type="text" path="image"/>
				</form:label>
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="video">Enter the video url:
					<form:input type="text" path="video"/>
				</form:label>
			</fieldset>
			<button type="submit">Submit</button>
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
    <title>Edit Profile</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 40px;
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: bold;
        }
        .form-control {
            margin-top: 5px;
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
        <h2 class="mb-4">Edit Profile</h2>
        <form:form modelAttribute="UserAccount" method="post">
            <!-- ID (hidden) -->
            <form:input type="hidden" path="id"/>

            <!-- Email -->
            <div class="form-group mb-3">
                <form:label path="email" class="form-label">Enter the Email:</form:label>
                <form:input type="email" path="email" class="form-control" placeholder="name@example.com"/>
            </div>

            <!-- Password -->
            <div class="form-group mb-3">
                <form:label path="password" class="form-label">Enter the Password:</form:label>
                <form:input type="password" path="password" class="form-control" placeholder="********"/>
            </div>

            <!-- Username -->
            <div class="form-group mb-3">
                <form:label path="username" class="form-label">Enter the Username:</form:label>
                <form:input type="text" path="username" class="form-control" placeholder="Your username"/>
            </div>

            <!-- Date of Birth -->
            <div class="form-group mb-3">
                <form:label path="dob" class="form-label">Enter the Date of Birth:</form:label>
                <form:input type="text" path="dob" class="form-control datepicker" placeholder="YYYY-MM-DD"/>
            </div>

            <!-- Image URL -->
            <div class="form-group mb-3">
                <form:label path="image" class="form-label">Enter the Image URL:</form:label>
                <form:input type="url" path="image" class="form-control" placeholder="https://example.com/image.jpg"/>
            </div>

            <!-- Video URL -->
            <div class="form-group mb-3">
                <form:label path="video" class="form-label">Enter the Video URL:</form:label>
                <form:input type="url" path="video" class="form-control" placeholder="https://example.com/video.mp4"/>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary">Submit</button>
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
