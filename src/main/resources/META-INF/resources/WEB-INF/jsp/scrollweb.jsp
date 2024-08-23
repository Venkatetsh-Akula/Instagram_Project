<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scrolling Posts</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<c:forEach var="scroll" items="${posts}">
			<img src="${scroll.getUrl()}" alt="others new post" height="281px" width="281px">
		</c:forEach>
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
    <title>Scrolling Posts</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fafafa;
        }
        .container-fluid {
            display: flex;
            padding: 0;
        }
        .sidebar {
            width: 250px;
            position: fixed;
            height: 100vh;
            background-color: #fff;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
            padding: 20px;
            box-sizing: border-box;
        }
        .feed {
            margin-left: 260px; /* Leave space for the sidebar */
            padding: 20px;
            width: calc(100% - 260px); /* Adjust width to fit within screen */
            overflow-y: auto;
            max-height: 100vh; /* Ensures it fits within the viewport */
        }
        .post {
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.15);
            overflow: hidden;
            background-color: #fff;
            border: 1px solid #e6e6e6;
            padding:20px 0px;
        }
        .post img {
            width: 400px;
            height: 650px;
            display: block;
            margin:auto;
        }
        .post-footer {
            padding: 10px;
        }
        .navbar {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .nav-item {
            padding: 10px 0;
            color: #333;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s;
        }
        .nav-item:hover {
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <nav class="navbar">
                <a href="scrollrequest" class="nav-item">Home</a>
                <a href="profilerequest" class="nav-item">Profile</a>
                <a href="#" class="nav-item">Messages</a>
                <a href="#" class="nav-item">Settings</a>
                <a href="loginrequest" class="nav-item">Logout</a>
            </nav>
        </div>

        <!-- Scrolling Feed -->
        <div class="feed">
            <c:forEach var="scroll" items="${posts}">
                <div class="post">
                    <img src="${scroll.getUrl()}" alt="Post Image">
                    <%-- <div class="post-footer">
                        <p>Posted by <strong>${scroll.username}</strong> on <em>${scroll.date}</em></p>
                        <p>${scroll.description}</p>
                    </div> --%>
                </div>
            </c:forEach>
        </div>
    </div>

    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html>
