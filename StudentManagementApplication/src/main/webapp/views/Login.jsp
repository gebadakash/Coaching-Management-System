<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');


        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-font-family: 'Poppins', sans-serif;
            --light-white: #f5f8fa;
            --gray-1: #e3e3e3;
            --gray: #5e6278;


        }

        body {

            font-family: var(--primary-font-family);
            font-size: 14px;
        }

        .wrapper {

            padding: 0 0 100px;
            background-image: url("images/bg.png");
            background-position: bottom center;
            background-repeat: no-repeat;
            background-size: contain;
            background-attachment: fixed;
            min-height: 100%;
        }

       .wrapper .logo {

            max-width: 40%;
            display: inline-block;

        }

        .wrapper input{

            background-color: var(--light-white);
            border-color: var(--light-white);
            color: var(--gray);
        }

        .wrapper input:focus{

            box-shadow: none;
        }

        .wrapper .submit_btn{
            padding: 15px;
            font-weight: 500;
        }

        .wrapper .login_with{
            padding: 15px;
            font-size: 15px;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }

        .wrapper .submit_btn:focus,
        .wrapper .login_with:focus{

            box-shadow: none;
        }


</style>

</head>

<body>


<section class="wrapper">

        <div class="container">

            <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4 text-center">
            

         		<div class="logo">
          			<img src="images/admin-logo.png" class="img-fluid" alt="logo">  
                </div>  

                <form action="login" class="rounded bg-white shadow p-5" method="post">

                    <h3 class="text-dark fw-bolder fs-4 mb-2">LOGIN</h3>
                    <div class="fw-normal text-muted mb-4">

                        Sign in to start your session 

                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="username" required="required">
                        <label for="floatingInput">Username</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" required="required">
                        <label for="floatingPassword">Password</label>
                    </div>

                    <div class="mt-2 text-end">
                        <a href="forgotpassword" class="text-primary fw-bold text-decoration-none">Forgot Password ?</a>
                    </div>
                    
                    <div class="mt-2">
                        <h6 class="text-danger">${login_fail}</h6>
                    </div>

                    <button type="submit" class="btn btn-primary submit_btn w-100 my-4">Login</button>

                    
                </form>

            </div>


        </div>

    </section>


</body>
</html>