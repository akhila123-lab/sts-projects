<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="./base.jsp"%>
</head>
<body>
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
						
					</tr>
				</thead>
				<tbody>
				<c:forEach var="movie" items="${movie}">
						<tr>
							<td>${movie.movieName}</td>
							<td>${movie.movieBudget}</td>
							<td>${movie.directorName}</td>
							<td>${movie.heroName}</td>
							<td>${movie.language}</td>
							<td>${movie.movieCategory}</td>
							
						</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>