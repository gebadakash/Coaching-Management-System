<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <style>

            .custom-container{

                max-width: 500px;
                max-height: 100vh;
                position: relative;
                top: 200px;
            }
        </style>
</head>
<body>

<form action="updatePassword">

    <div class="container custom-container">

        <div class="card text-center" style="height: 300px;">
            <div class="card-header">
                <ul class="nav nav-pills card-header-pills justify-content-between">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Cancel</a>
                    </li>
                    <li class="nav-item">
                        <input type="hidden" value="${UserId}" name="userId">
                    </li>
                    <li class="nav-item">
                        <label class="mt-2 me-4 text-danger">${errorMessage}</label>
                    </li>
                </ul>
            </div>
            <div class="card-body">
                <div class="mb-3 d-flex justify-content-between">
                    <label for="formGroupExampleInput" class="form-label mt-4">Username</label>
                    <input type="text" class="form-control ms-4 mt-4" name="username" id="formGroupExampleInput" required="required"
                        placeholder="Enter username" style="width: 70%; height: 50%;">
                </div>
                <div class="mb-3 d-flex justify-content-between">
                    <label for="formGroupExampleInput2" class="form-label mt-4">Password</label>
                    <input type="text" class="form-control ms-4 mt-4" name="password" id="formGroupExampleInput2" required="required"
                        placeholder="choose password" style="width: 70%; height: 50%;">
                </div>
                <button type="submit" class="btn btn-primary mt-4">Update</button>
            </div>
        </div>
    </div>

</form>

</body>
</html>