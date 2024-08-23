<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile Page</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
</head>
<body>
	<div class="container" modelAttribute="UserAccount">
		<img src="${UserAccount.image}" alt="Profile pic" width="200" height="200">
		<h6>${UserAccount.username}</h6>
		<a href="editprofilerequest">edit profile</a>
		<h3>post</h3>
		<h3>followers</h3>
		<h3>following</h3>
		<a href="postrequest">New Post</a>
		<pre>${msg}</pre>
		<c:forEach var="pt" items="${posts}">
			<div>
				<img src="${pt.url}">
			</div>
		</c:forEach>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html> --%>

 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fafafa;
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }

        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ddd;
        }

        .profile-info {
            flex-grow: 1;
            padding-left: 30px;
        }

        .username {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .stats {
            display: flex;
            gap: 20px;
            margin-bottom: 10px;
        }

        .stat {
            text-align: center;
        }

        .stat-number {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .stat-label {
            font-size: 14px;
            color: #888;
        }

        .edit-profile-btn {
            background-color: #0095f6;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            padding: 5px 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .edit-profile-btn:hover {
            background-color: #007bb5;
        }

        .posts {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Limit to 3 posts per row */
            gap: 20px;
        }

        .post {
            width: 100%;
            overflow: hidden;
            position: relative;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease;
        }

        .post img {
            width: 100%;
            height: 281px; /* Ensures height consistency */
            object-fit: cover; /* Maintain aspect ratio */
            transition: transform 0.3s ease;
        }

        .post:hover {
            transform: scale(1.05);
        }

        .post:hover img {
            transform: scale(1.1);
        }

        .new-post-btn {
            display: block;
            margin: 20px auto;
            width: fit-content;
            padding: 8px 16px;
            background-color: #28a745;
            color: white;
            text-align: center;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .new-post-btn:hover {
            background-color: #218838;
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
    <div class="container" modelAttribute="UserAccount">
        <div class="profile-header">
            <img src="${UserAccount.image}" alt="Profile pic" class="profile-picture">
            <div class="profile-info">
                <div class="username">${UserAccount.username}</div>
                <div class="stats">
                    <div class="stat">
                        <div class="stat-number">${posts.size()}</div>
                        <div class="stat-label">Posts</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number">${followers != null ? followers.size() : 0}</div>
                        <div class="stat-label">Followers</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number">${following != null ? followers.size() : 0}</div>
                        <div class="stat-label">Following</div>
                    </div>
                </div>
                <button class="edit-profile-btn" onclick="location.href='editprofilerequest'">Edit Profile</button>
            </div>
        </div>
        <a href="postrequest" class="new-post-btn">New Post</a>
        <div class="posts">
            <c:forEach var="pt" items="${posts}">
                <div class="post">
                    <img src="${pt.url}" alt="Post picture" >
                   <!--  <video src="https://example.com" controls>Label or text to display</video> -->
                </div>
            </c:forEach>
        </div>
        <pre>${msg}</pre>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 