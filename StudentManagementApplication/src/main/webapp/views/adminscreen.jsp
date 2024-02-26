<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Admin Login</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

	<style type="text/css">
		.enroll {
			background-image: url("images/addstudentbg.jpeg");
			background-size: cover;
			background-repeat: no-repeat;
		}

		.heading {
			font-family: cursive;
			text-align: center;
			margin-bottom: 20px;
		}

		.view {
			background-image: url("images/viewstudents.jpeg");
			background-size: cover;
			background-repeat: no-repeat;
		}

		.heading {
			justify-content: center;
			display: flex;
			margin-bottom: 20px;
		}
	</style>
</head>

<body>

	<div class="container-fluid">
		<div class="row flex-nowrap">
			<div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
				<div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white h-100">
					<a href="/"
						class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
						<span class="fs-5 d-none d-sm-inline">Dashboard</span>
					</a>
					<ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
						id="menu">
						<li class="nav-item">
							<a href="#enroll" class="nav-link align-middle px-0">
								<i class="fs-4 bi-house"></i><span class="ms-1 d-none d-sm-inline">Enroll Student</span>
							</a>
						</li>
						<li>
							<a href="#" class="nav-link px-0 align-middle">
								<i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">Profiles</span></a>
						</li>


						<li>
							<a href="viewstu" class="nav-link px-0 align-middle">
								<i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">View Student</span>
							</a>
						</li>
					</ul>
					<hr>

					<div class="d-flex align-items-end">
						<a href="/" style="font-size: large; text-decoration: none;"><i class="bi bi-box-arrow-right"></i> LogOut</a>
					</div>
				</div>

				
				
			</div>
			<div class="col py-3">
				<div>
					<section class="gradient-custom" id="enroll">
						<div class="container h-100">
							<div class="row justify-content-center h-100">
								<div class="col-12 col-lg-9 col-xl-12">
									<div class="card shadow-2-strong card-registration mt-5"
										style="border-radius: 15px;">
										<div class="card-body mt-0">
											<h3 class="heading">Student Enrollment Form</h3>

											<form action="enroll_student" method="post">
												<div class="row ">
													<div class="col-md-6 mb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-4 pb-1">First Full Name</h6>
															<input type="text" id="firstName"
																class="form-control form-control-sm"
																name="studentFullName"
																placeholder="Example: Rohan Mukesh Sharma"
																required="required" />

														</div>
													</div>
													<div class="col-md-6 mb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-4 pb-1">Student Email</h6>
															<input type="email" id="lastName"
																class="form-control form-control-sm" name="studentEmail"
																placeholder="Example: jhon44@gmail.com"
																required="required" />

														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6 mb-2 d-flex align-items-center">
														<div class="form-outline datepicker w-100">
															<h6 class="mb-2 pb-1">Student Age</h6>
															<input type="text" class="form-control form-control-sm"
																id="birthdayDate" name="studentAge"
																placeholder="Example: 22" required="required" />

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Student College Name</h6>
															<input type="text" id="text"
																class="form-control form-control-sm"
																name="studentCollegeName"
																placeholder="Example: xyz pune, Maharashtra"
																required="required" />

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Student Contact No.</h6>
															<input type="tel" id="contactNumber"
																class="form-control form-control-sm" name="studentcontact"
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
																required="required" />

														</div>
													</div>

													<div class="col-md-6 mb-2 pb-2">
														<div class="form-outline">
															<h6 class="mb-2 mt-2 pb-1">Fees Paid</h6>
															<input type="number" id="emailAddress"
																class="form-control form-control-sm" name="feesPaid"
																required="required" />

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
														<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Example:- Houseno-111, Area name, city name, State, pincode" required="required" name="studentAddress"></textarea>
													  </div>
												</div>
												<div class="mt-2 pt-2 d-flex justify-content-center">
													<input class="btn btn-primary btn-lg" type="submit"
														value="Submit" />
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
		</div>
	</div>



</body>

</html>