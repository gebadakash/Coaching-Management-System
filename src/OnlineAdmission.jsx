import { useState } from "react";
import styled from "styled-components";
import axios from 'axios';
import {toast} from 'react-toastify';


const OnlineAdmission = () => {


  const [formData, setFormData] = useState({
    studentFullName: '',
    studentEmail: '',
    studentAge: '',
    studentCollegeName: '',
    studentcontact: '',
    studentCourse: '',
    batchMode: '',
    studentAddress: ''
  });



  const handleChange = e => {
    if (e.target.type === "radio") { // Check if the input type is radio
      setFormData({ ...formData, [e.target.name]: e.target.value }); // Update form data for radio inputs
    } else {
      setFormData({ ...formData, [e.target.name]: e.target.value }); // Update form data for other inputs
    }
  };
  

  const handleSubmit = async e => {
    e.preventDefault();
    try {
      await axios.post('', formData);
      toast.success('Registration successful! Coaching class Staff Contact You soon..');
    } catch (error) {
      console.error('Registration failed:', error);
      toast.error('Registration failed!');
    }
  };




  return (
    <Wrapper>
      <div className="col py-3">
        <section className="gradient-custom" id="enroll">
          <div className="container h-100">
            <div className="row justify-content-center h-100">
              <div className="col-12 col-lg-9 col-xl-12">
                <div
                  className="card shadow-2-strong card-registration mt-5"
                  style={{ borderRadius: "15px;" }}
                >
                  <div className="card-body mt-0">
                    <h3 className="heading">Online Enrollment Form</h3>

                    <form onSubmit={handleSubmit}>
                      <div className="row ">
                        <div className="col-md-6 mb-2">
                          <div className="form-outline">
                            <h6 className="mb-2 mt-4 pb-1">Enter Full Name</h6>
                            <input
                              type="text"
                              className="form-control form-control-lg"
                              name="studentFullName"
                              placeholder="Example: Rohan Mukesh Sharma"
                              value={formData.studentFullName}
                              onChange={handleChange}
                              required
                            />
                          </div>
                        </div>
                        <div className="col-md-6 mb-2">
                          <div className="form-outline">
                            <h6 className="mb-2 mt-4 pb-1">Enter Email</h6>
                            <input
                              type="email"
                              className="form-control form-control-lg"
                              name="studentEmail"
                              placeholder="Example: jhon44@gmail.com"
                              value={formData.studentEmail}
                              onChange={handleChange}
                              required
                            />
                          </div>
                        </div>
                      </div>
                      <div className="row">
                        <div className="col-md-6 mb-2 d-flex align-items-center">
                          <div className="form-outline datepicker w-100">
                            <h6 className="mb-2 pb-1">Enter Age</h6>
                            <input
                              type="text"
                              className="form-control form-control-lg"
                              name="studentAge"
                              placeholder="Example: 22"
                              value={formData.studentAge}
                              onChange={handleChange}
                              required
                            />
                          </div>
                        </div>

                        <div className="col-md-6 mb-2 pb-2">
                          <div className="form-outline">
                            <h6 className="mb-2 mt-2 pb-1">
                              Enter College Name
                            </h6>
                            <input
                              type="text"
                              className="form-control form-control-lg"
                              name="studentCollegeName"
                              placeholder="Example: xyz pune, Maharashtra"
                              value={formData.studentCollegeName}
                              onChange={handleChange}
                              required
                            />
                          </div>
                        </div>

                        <div className="col-md-6 mb-2 pb-2">
                          <div className="form-outline">
                            <h6 className="mb-2 mt-2 pb-1">
                              Enter Contact No.
                            </h6>
                            <input
                              type="tel"
                              className="form-control form-control-lg"
                              name="studentcontact"
                              placeholder="Example: +91 66654635"
                              value={formData.studentcontact}
                              onChange={handleChange}
                              required
                            />
                          </div>
                        </div>

                        <div className="col-md-6 mb-2">
                          <h6 className="mb-2 mt-2 pb-1">Choose Course</h6>
                          <select
                            className="select form-control-lg"
                            name="studentCourse"
                            required="required"
                            value={formData.studentCourse}
                            onChange={handleChange}
                          >
                            <option value="#" disabled>
                              Select Courses
                            </option>
                            <option value="java">Java</option>
                            <option value="python">Python</option>
                            <option value=".Net">.net</option>
                            <option value="JavaScript">JavaScript</option>
                            <option value="Angular">Angular</option>
                            <option value="React">React</option>
                          </select>
                        </div>
                      </div>
                      <div className="row">
                        <div className="col">
                          <h6 className="mb-2 mt-2 pb-1">Choose Mode</h6>

                          <div className="form-check">
                            <input
                              className="form-check-input rd"
                              type="radio"
                              name="batchMode"
                              id="online"
                              value="online"
                              checked={formData.batchMode === "online"} 
                              onChange={handleChange}
                            />
                            <label
                              className="form-check-label labOn"
                              htmlFor="online"
                            >
                              Online
                            </label>
                          </div>
                          <div className="form-check ">
                            <input
                              className="form-check-input rd"
                              type="radio"
                              name="batchMode"
                              id="offline"
                              value="offline"
                              checked={formData.batchMode === "online"} 
                              onChange={handleChange}
                            />
                            <label
                              className="form-check-label labOn"
                              htmlFor="offline"
                            >
                              Offline
                            </label>
                          </div>
                        </div>

                        <div className="col"></div>

                        <div className="form-group mt-4">
                          <h6 className="mb-2 mt-2 pb-1">Enter Full Address</h6>
                          <textarea
                            className="form-control form-control-lg"
                            id="exampleFormControlTextarea1"
                            rows="3"
                            placeholder="Example:- Houseno-111, Area name, city name, State, pincode"
                            required="required"
                            name="studentAddress"
                            value={formData.studentAddress}
                            onChange={handleChange}
                          ></textarea>
                        </div>
                      </div>
                      <div className="mt-2 pt-2 d-flex justify-content-center">
                        <input
                          className="btn btn-primary btn-lg"
                          type="submit"
                          value="SUBMIT"
                        />
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </Wrapper>
  );
};

const Wrapper = styled.section`
  .heading {
    font-size: 25px;
    text-align: center;
    margin: 10px;
  }

  .btn {
    font-size: 18px;
    margin: 10px;
  }

  .labOn,
  h6 {
    font-size: 18px;
  }

  .labOn {
    margin-left: 7px;
  }

  .rd {
    margin-left: 1px;
  }

  input,
  textarea,
  option {
    font-size: 16px;
  }
`;

export default OnlineAdmission;
