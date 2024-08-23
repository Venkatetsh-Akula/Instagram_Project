<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Post</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form:form modelAttribute="PostClass">
			<fieldset>
				<form:label path="url">Enter the url
					<form:input type="text" path="url" />
				</form:label>
			</fieldset>
			<button type="submit">Submit</button>
		</form:form>
		<form method="post">
			<label> Enter the url that you have to post
				<input type="text" name="url">
			</label>
			<button type="submit">Submit</button>
		</form>
		
		
		
	
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Post</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
        }
        .container {
            margin-top: 50px;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-submit {
            margin-top: 20px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
            border-radius: 10px 10px 0 0;
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

    <!-- Main Container -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center">
                        <h4>Upload Your Post</h4>
                    </div>
                    <div class="card-body">
                        <%-- Spring Form Example (Commented Out) --%>
                        <form:form modelAttribute="PostClass">
                            <div class="mb-3">
                                <form:label path="url" class="form-label">Enter the URL</form:label>
                                <form:input type="text" path="url" class="form-control"/>
                            </div>
                            <button type="submit" class="btn btn-primary btn-submit">Submit</button>
                        </form:form> 
                        
                        <!-- Plain HTML Form Sample -->
                        <form method="post">
                            <div class="mb-3">
                                <label for="url" class="form-label">Enter the URL</label>
                                <input type="text" name="url" id="url" class="form-control" placeholder="https://example.com" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-submit w-100">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start mt-5">
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2024 My Application.
        </div>
    </footer>

    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html>
