<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movie</title>  

<link rel="stylesheet" href="add-movie.css">

</head>
<body>
	<div class="main">
		<div class="container">
			<h1 class="add">Add Movie Form</h1>
			<form action="insert-movie" method="post">

				<div class="row">
					<div class="col">
						<label>Movie Name</label> <input type="text" class="form-control"
							name="movieName" required>
					</div>
					<div class="col">
						<label>Budget</label> <input type="number" class="form-control"
							name="movieBudget" required>
					</div>

					<div class="col">
						<label for="department">Director Name</label> <input type="text"
							class="form-control" id="department" name="directorName" required>
					</div>
					<div class="col">
						<label for="hero">Hero Name</label> <input type="text"
							class="form-control" id="salary" name="heroName" required>
					</div>

					<div class="col">
						<label for="address">Language</label> <input type="text"
							class="form-control" id="address" name="language" required>
					</div>



					<div class="col">
						<label for="address">category</label> <input type="text"
							class="form-control" id="address" name="movieCategory" required>
					</div>
				</div>
				
				<div>
					<button type="submit" class="btn">Submit</button>

				</div>

			</form>
		</div>
	</div>



</body>
</html>