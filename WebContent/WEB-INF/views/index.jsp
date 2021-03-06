<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Planets</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	position: fixed;
	width: 100%;
	color: white;
	bottom: 0;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: bottom;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: white;
}


html {
	background-image: url("3D-Solar-System-Wallpaper.jpg");
	background-color: black;
	background-size: cover;
	background-repeat: no-repeat;
}
.list{
	vertical-align:text-bottom;
	vertical-align: -50px;
}

</style>
</head>
<body>
	<div class="navbar">
		<ul>

			<li><a href="newPlanet.html">Add Planet</a></li>

			<li><a href="removePlanet.html">Remove Planet</a></li>

			<li><a href="updatePlanet.html">Update Planet</a></li>
		</ul>
	</div>



	<div class="list">
		<c:forEach items="${planetData}" var="planet">
			<a href="GetPlanetData.do?planetname=${planet.planetName}">
				Planet <c:out value="${planet.planetName}" />
			</a>
			<p>
		</c:forEach>
	</div>
</body>

</html>
