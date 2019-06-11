<!DOCTYPE html>
<html lang="en">
<head>
<title>Search Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<style>
body
{
background-repeat:no-repeat;
background-size:cover;
background-color:#d6e4ed;
}
</style>
<body background=".\claims.jpg">
<br>
<br>
<br>
<br>
<div class="container">
<form class="form-inline" method="post" action="claimStatus.jsp">
<center>
<input type="text" name="claimID" class="form-control" value="" required placeholder="CLAIM ID">
<button type="submit" name="Search" class="btn btn-primary">Search</button>
</center>
</form>
</div>

</body>
</html>