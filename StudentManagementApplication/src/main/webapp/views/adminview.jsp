<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Admin view page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
        <script type="text/javascript">
        
        
        	function fees(){
        		
        		document.fun.action = "/fees"
        		document.action.submit();
        	}
        	
        	function shiftBatch(){
        		
        		document.fun.action = "/shiftBatch"
        		document.action.submit();
        	}
        	

        </script>
</head>

<body data-bs-theme="dark">

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
                        <a class="nav-link active" aria-current="page" href="/">
                            <button class="btn btn-outline-primary">Logout</button>
                        </a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>


    <div class="container-fluid">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-xs-5 mb-4">
                            <h2>Student Management</h2>
                        </div>
                        <div class="col-xs-7">
                            <a href="adminscreenPage" class="btn btn-primary"><i class="material-icons">&#xE147;</i> <span>Enroll
                                    Student</span></a>
                            <a href="download" class="btn btn-primary"><i class="material-icons">&#xE24D;</i> <span>Export to
                                    Excel</span></a>
                                    
                          
                        </div>
                    </div>
                    
                    <div class="mt-2 d-flex justify-content-center">
                        <h6 class="text-danger">${message}</h6>
                    </div>
                    
                <form action="showData">
                
                	
                    
                    <div class="mx-auto d-flex" style="width: 200px">
                    
                    
                        <select aria-label="Default select example" name="batchNumber">
                            <option value="#">Select Batch Number</option>
                                        <option value="FDJ-160">FDJ-160</option>
                                        <option value="REG-160">REG-160</option>
                                        <option value="FDJ-161">FDJ-161</option>
                                        <option value="REG-161">REG-162</option>
                                        <option value="FDJ-162">FDJ-162</option>
                                        <option value="REG-162">REG-162</option>
                                        <option value="FDJ-163">FDJ-163</option>
                                        <option value="REG-163">REG-163</option>
                                        <option value="FDJ-164">FDJ-164</option>
                                        <option value="REG-164">REG-164</option>
                                        <option value="FDJ-165">FDJ-165</option>
                                        <option value="REG-165">REG-165</option>
                        </select>

                        <input class="btn btn-primary btn-sm ms-2" type="submit" value="Show Data" />
                    </div>
                  </form>
                    
                </div>
                <form name="fun">
                
                <table class="table table-striped table-hover table-bordered mt-4">
                    <thead>
                        <tr>
                        	<th>Select</th>
                            <th>ID</th>
                            <th>Student Name</th>
                            <th>Student Email</th>
                            <th>Contact no</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>College Name</th>
                            <th>Course Name</th>
                            <th>Batch No</th>
                            <th>Mode</th>
                            <th>Total Fee</th>
                            <th>Fee Received</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${Data}" var="s">
                            <tr>
                            	<td>
                            	<input type="radio" name="id" value="${s.studentId} " required="required" >
                            	</td>
                                <td>${s.studentId}</td>
                                <td>${s.studentFullName}</td>
                                <td>${s.studentEmail}</td>
                                <td>${s.studentcontact}</td>
                                <td>${s.studentAge}</td>
                                <td>${s.studentAddress}</td>
                                <td>${s.studentCollegeName}</td>
                                <td>${s.studentCourse}</td>
                                <td>${s.batchNumber}</td>
                                <td>${s.batchMode}</td>
                                <td>${s.totalfees}</td>
                                <td>${s.feesPaid}</td>
                                <td>
                                    <div class="btn-group btn-group-sm" role="group" aria-label="...">
                                    <button  class="btn btn-success .btn-lg" onclick="fees()">Pay fees</button>
                                        <button class="btn btn-outline-secondary" onclick="shiftBatch()">Edit Details</button>
                                        <a class="btn btn-danger" href="delete?studentId=${s.studentId}">Remove</a>
                                    </div>

                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>      
                </form>
                
                
                                                        
   <c:if test="${totalPages > 1}">
    <div class="panel-footer">
    Showing ${number * size + 1} - ${number * size + Data.size()} of ${totalElements}
        <ul class="pagination">
            <li class="page-item">
                <c:if test="${number > 0}">
                    <a href="viewstu?page=${number - 1}&size=${size}" class="page-link">Previous</a>
                </c:if>
            </li>
            
            <c:forEach begin="0" end="${totalPages - 1}" var="page">
                <li class="page-item">
                    <a href="viewstu?page=${page}&size=${size}" class="page-link">${page + 1}</a>
                </li>
            </c:forEach>
            
            <li class="page-item">
                <c:if test="${number < totalPages - 1}">
                    <a href="viewstu?page=${number + 1}&size=${size}" class="page-link">Next</a>
                </c:if>
            </li>
        </ul>
    </div>
</c:if>


                                      
                
                
            </div>
            </div>
        </div>


</body>

</html>