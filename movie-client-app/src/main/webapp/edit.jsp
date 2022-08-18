<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Movie</title>
<%@include file="./base.jsp"%>
<!-- <script src="toast.js" ></script>   -->	
 

</head>
<body>
<style>
body, html {
  height: 100%;
}
.main{
	background: url("/images/movie_add.jpg") no-repeat center center fixed;
	background-size: cover;
	  height: 100%;
}
.container {
	height: 100%;
	width:350px;
	margin: auto;
}
.container .row{
	width: 500px;
}
.container .row .col{
	display: flex;
	margin: 10px;
}
.container .row .col label{
	width: 150px;
}
.container .row .col input{
	padding: 5px 0px;
	width: 200px;
}
.container .add{
	text-align: center;
	color: brown;
	padding-top: 20px;
}
.container .editbtn{
	border : 2px solid aqua;
	border-radius: 10px;
	background-color: aqua;
	padding: 10px;
	color: white;
	cursor: pointer;
	font-weight: bold;
	display: flex;
	margin: auto
}
.container .editbtn:hover{
	background-color: white;
	color: aqua;
	
}

</style>
<div class="main">
	<div class="container">

		<h1 class="add"> <center>Edit Movie</center> </h1>
		<form action="update-movie" method="post">

			<div class="row">
				<div class="col">
						<label for="name">Movie Name</label> <input type="text"
							value="${movie.movieName}"  id="name" name="movieName" readonly="readonly"
							required >
				</div>
				<div class="col">
						<label for="name">Budget</label> <input type="number"
							value="${movie.movieBudget}" id="name"
							name="movieBudget" required>
				</div>	
			

				
				<div class="col">
						<label for="designation">Director Name</label> <input type="text"
							value="${movie.directorName}" 
							id="designation" name="directorName" required
							>
				</div>

				<div class="col">
						<label for="department">Hero Name</label> <input
							type="text" id="department"
							value="${movie.heroName}" name="heroName" required
							>
				</div>
				<div class="col">
						<label for="salary">Language</label> <input type="text"
							value="${movie.language}" id="salary"
							name="language" required>
				</div>
				
				<div class="col">
						<label for="id">category</label> <input type="text"
							value="${movie.movieCategory}"  id="id" name="movieCategory" required
							>
				</div>
				
			</div>

			<div>

		  	<button type="submit" class="editbtn" >Submit</button>  
		  	
		  	</div>
		
		</form>

	</div>
</div>

</body>
</html>