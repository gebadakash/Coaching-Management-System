<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>
    
    <nav class="navbar sticky-top navbar-expand-lg mb-4  border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <img src="images/cjclogo.jpeg" width="100px" height="50px">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                	<li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/viewstu">
                            <button class="btn btn-outline-primary">Cancel</button>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">
                            <button class="btn btn-outline-primary">Logout</button>
                        </a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>
    
        <div class="d-flex justify-content-center align-center">
            <div class="w-50 align-middle border border-info border-3 mt-2" style="height: 500px">
                <h6 class="p-3 text-primary ">
                    <u>Installment Details :-</u>
                </h6>
                <div class="border border-secondary m-3 p-2">
                    <table class="table table-hover border border-secondary ">
                        <tbody>
                            <tr class="table-primary fs-6">
                                <th>STUDENT ID</th>
                                <td>${student.studentId}</td>
                            </tr>
                            <tr class="table-primary fs-6">
                                <th>STUDENT NAME</th>
                                <td>${student.studentFullName}</td>

                            <tr class="table-primary fs-6">
                                <th>Course NAME</th>
                                <td>${student.studentCourse}</td>
                            </tr>

                            <tr class="table-primary fs-6">
                                <th>BATCH NUMBER</th>
                                <td>${student.batchNumber}</td>
                            </tr>
                            </tr>
                            <tr class="table-danger fs-6">
                                <th>FEES PAID</th>
                                <td>${student.feesPaid}</td>
                            </tr>

                        </tbody>
                    </table>
                    <form action="payfees">
                        <input type="text" name="id" value="${student.studentId}" hidden="true">
                        <div class="bg-dark p-2 d-flex justify-content-between">
                            <label for="amount" class="text-info"><b>Enter Installment<br>
                                    Amount</b></label>
                            <input style="margin: 9px 9px;" type="number" name="amount" max="30000">
                        </div>
                        <div class="d-flex justify-content-center pt-5">
                            <button class="btn btn-success btn-sm ">Add Installment</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>

    </html>