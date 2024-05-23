
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Search Word Result</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h2 class="display-4">Search result:</h2>
    <div>
        <div class="col-md-6">
            <p>Word: <%= request.getAttribute("word") %></p>
        </div>
        <div class="col-md-6">
            <p>Count: <%= request.getAttribute("count") %></p>
        </div>
    </div>
</div>
</body>
</html>
