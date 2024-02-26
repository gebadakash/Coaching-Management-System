<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
                    
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/viewstu">
                            <button class="btn btn-outline-primary">Cancel Edit</button>
                        </a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>

<div class="col py-3">
                <div>
                    <section class="vh-100 gradient-custom  mt-5" id="enroll">
                        <div class="container h-100">
                            <div class="row justify-content-center h-100">
                                <div class="col-12 col-lg-9 col-xl-7">
                                    <div class="card shadow-2-strong card-registration mt-5"
                                        style="border-radius: 15px;">
                                        <div class="card-body mt-0">
                                            <h3 class="heading">Student Enrollment Form</h3>

                                            <form action="update" method="post">
                                                <div class="row ">
													<div class="col-md-6 mb-2">
														<div class="form-outline">
														
														 <input type="text" id="firstName"
                                                                class="form-control form-control-sm"
                                                                name="StudentId"
                                                                value="${student.studentId}" hidden="true" />
                                                                
                                                             </div>
                                                                
															<h6 class="mb-2 mt-4 pb-1">First Full Name</h6>
															<div class="form-outline">
															<input type="text" id="firstName"
                                                                class="form-control form-control-sm"
                                                                name="studentFullName"
                                                                placeholder="Example: Rohan Mukesh Sharma"
                                                                required="required" value="${student.studentFullName}" />

														</div>
													</div>
													<div class="col-md-6 mb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-4 pb-1">Student Email</h6>
															<input type="email" id="lastName"
                                                                class="form-control form-control-sm" name="studentEmail"
                                                                placeholder="Example: jhon44@gmail.com"
                                                                required="required" value="${student.studentEmail}" />

														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6 mb-2 d-flex align-items-center">
														<div class="form-outline datepicker w-100">
															<h6 class="mb-2 pb-1">Student Age</h6>
															<input type="text" class="form-control form-control-sm"
                                                                id="birthdayDate" name="studentAge"
                                                                placeholder="Example: 22" required="required" value="${student.studentAge}"/>

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Student College Name</h6>
															<input type="tel" id="text"
                                                                class="form-control form-control-sm"
                                                                name="studentCollegeName"
                                                                placeholder="Example: xyz pune, Maharashtra"
                                                                required="required" value="${student.studentCollegeName}" />

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Student Contact No.</h6>
															<input type="tel" id="contactNumber"
																class="form-control form-control-sm" name="studentcontact"
																value="${student.studentcontact}"
																 required="required"/>
														</div>
													</div>

													<div class="col-md-6 mb-2">
														<h6 class="mb-2 mt-2 pb-1">Student Course</h6>
														<select class="select form-control-sm" name="studentCourse"
															required="required">
															<option value="#" disabled>Select Courses</option>
															<option value="java">Java</option>
															<option value="python">Python</option>
															<option value="python">.net</option>
															<option value="python">JavaScript</option>
															<option value="python">Angular</option>
															<option value="python">React</option>

														</select>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Total Fees</h6>
															<input type="number" id="emailAddress"
																class="form-control form-control-sm" name="Totalfees"
																value="${student.totalfees}"
																required="required" />

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Fees Paid</h6>
															<input type="number" id="emailAddress"
                                                                class="form-control form-control-sm" name="feesPaid"
                                                                required="required" value="${student.feesPaid}"/>

														</div>
													</div>

													
													

												</div>
												<div class="row">
													<div class="col">
														<h6 class="mb-2 mt-2 pb-1">Batch Mode</h6>

														<div class="form-check">
															<input class="form-check-input" type="radio"
																name="batchMode" id="online" value="online" />
															<label class="form-check-label" for="online">Online</label>
														</div>
														<div class="form-check ">
															<input class="form-check-input" type="radio"
																name="batchMode" id="offline" value="offline" />
															<label class="form-check-label"
																for="offline">Offline</label>
														</div>

													</div>


													<div class="col">
														<h6 class="mb-2 mt-2 pb-1">Batch Number</h6>
														<select class="select form-control-sm" name="batchNumber"
															required="required">
															<option value="#" disabled>Select Batch Number</option>
															<option value="FDJ-160">FDJ-161</option>
															<option value="REG-160">REG-161</option>
															<option value="FDJ-161">FDJ-162</option>
															<option value="REG-161">REG-162</option>
															<option value="FDJ-162">FDJ-163</option>
															<option value="REG-162">REG-163</option>
															<option value="FDJ-163">FDJ-164</option>
															<option value="REG-163">REG-164</option>
															<option value="FDJ-164">FDJ-165</option>
															<option value="REG-164">REG-165</option>
															<option value="FDJ-165">FDJ-166</option>
															<option value="REG-165">REG-166</option>
														</select>

													</div>

													<div class="form-group mt-4">
														<h6 class="mb-2 mt-2 pb-1">Student Full Address</h6>
														<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Example:- Houseno-111, Area name, city name, State, pincode" 
														 name="studentAddress"></textarea>
													  </div>
												</div>
												<div class="mt-2 pt-2 d-flex justify-content-center">
													<input class="btn btn-primary btn-lg" type="submit"
														value="Update" />
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>



                </div>
            </div>


</body>
</html>