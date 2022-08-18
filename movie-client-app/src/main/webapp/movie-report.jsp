<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Movies List</title>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="movie-report.css">


</head>
<body>
	<div class="main">
		<div id="msgid" class="toast_msg">${success}</div>
		<div id="msgid1" class="toast_msg">${edit}</div>
		<div id="msgid2" class="toast_msg">${delete}</div>
		<div class="container">
			<h1 class="text-center">Movie Details</h1>

			<div class="movie_btn">
				<a href="add-movie" class="btn"> Add Movie </a> <br>
				<div>
					<form action="search-movie"	 method="get">
						<input id="txtSearch" type="text" class="input_search"
							placeholder="Type Movie or Hero Name" name="keyword" required>

						<button type="submit" class="btn">Search</button>
					</form>
				</div>
				<div>
					<form action="get-all" method="get">
						<button type="submit" class="btn">Clear</button>

					</form>
				</div>
			</div>
		
			<div class="row">

				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Budget</th>
							<th>Director</th>
							<th>Hero</th>
							<th>Language</th>
							<th>Category</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="movie" items="${movie}">
							<tr>
								<td>
									<div class="image-title">
										<img class="icon" src="/images/icon.jpg">
										<p class="img-text">${movie.movieName}</p>
									</div>
								</td>
								<td>${movie.movieBudget}</td>
								<td>${movie.directorName}</td>
								<td>${movie.heroName}</td>
								<td>${movie.language}</td>
								<td>${movie.movieCategory}</td>
								<%--		 <td><a class="edit" href="edit-movie/${movie.movieName}">Edit </a></td> 	 --%>
								<td><a href="edit-movie/${movie.movieName}">
									 <img alt="edit" class="edit" src="/images/edit.png"></a></td>
								<td><a href="delete-movie/${movie.movieName}"> <img
										alt="delete" class="edit" src="/images/delete.jpg"></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>


	<script type="text/javascript"> 

setTimeout (() =>{
	document.getElementById('msgid').innerHTML="";

}, 4000 );
setTimeout (() =>{
	document.getElementById('msgid1').innerHTML="";

}, 4000 );
setTimeout (() =>{
	document.getElementById('msgid2').innerHTML="";

}, 4000 );
</script>

</body>
</html>