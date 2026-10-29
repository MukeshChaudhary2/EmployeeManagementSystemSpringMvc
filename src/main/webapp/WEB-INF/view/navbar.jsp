<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
   .navbar-nav .nav-link {
    /* Base styles for a smooth transition */
    transition: all 0.3s ease-in-out;
}

.navbar-nav .nav-link:hover {
    color: #fff; /* Changes text to white for better contrast */
    
    /* Modern gradient background */
    background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
    
    border-radius: 8px; /* Slightly more rounded corners */
    
    /* A subtle, modern glow effect */
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    
    /* A more pronounced lift */
    transform: translateY(-5px);
}
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Employee Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active"
                    aria-current="page" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="addEmp">Add
                        Employee</a></li>
            </ul>
        </div>
    </div>
</nav>


    
</body>
</html>