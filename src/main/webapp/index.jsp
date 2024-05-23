
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Search Word</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="SearchWordServlet" method="post">
        <div class="mb-3">
            <label for="word" class="form-label">Enter the search word:</label>
            <input type="text" id="word" name="word" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
</body>
</html>
