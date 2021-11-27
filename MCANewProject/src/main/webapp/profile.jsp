<%@ include file="navbar.html"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Our Profile</title>
 <link rel="preconnect " href="https://fonts.gstatic.com ">
  <link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
    </header>
    <section class="container-fluid ">

        <!-- for Grid -->
        <div class="row mb-5 mt-2 bg-light ">
            <div class="col-lg-6 col-md-6 col-12 p-md-3 ">
                <img src="img/administrator-1188494_1920.jpg" class="img-fluid w-80px ">
            </div>
            <div class=" col-lg-6 col-md-6 col-12 text-md-center p-5 ">
                <h1>Administrator</h1>
                <p class="text-capitalize">a person who administers the affairs of an organization</p>
                <hr>
                <div class="m-5 p-5 m-auto m-lg-4 p-md-5">
                    <button class="btn btn-outline-primary text-center" data-toggle="modal" data-target="#myModal">Log In</button>
                    <button class="btn btn-outline-primary text-center" data-toggle="modal" data-target="#myModal1">Sign up</button>
                </div>

                <!-- The Modal -->
                <div class="modal fade" id="myModal">

                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content ">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Log in</h4>
                                <button type="button " class="close " data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/action_page.php">
                                    <div class="form-group">
                                        <label for="email">Email address:</label>
                                        <input type="email" class="form-control" placeholder="Enter email" id="email">
                                    </div>
                                    <div class="form-group">
                                        <label for="psw">Password</label>
                                        <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox"> Remember me
                                  </label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>

                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal -->
                <div class="modal fade" id="myModal1">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content ">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Log in</h4>
                                <button type="button " class="close " data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/action_page.php">
                                    <div class="form-group">
                                        <h1>Sign Up</h1>
                                        <p>Please fill in this form to create an account.</p>
                                        <hr>
                                        <div>
                                            <label for="email">Email address:</label>
                                            <input type="email" class="form-control" placeholder="Enter email" id="email">
                                        </div>
                                        <div>
                                            <label for="psw">Password:</label>
                                            <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>
                                        </div>
                                        <label for="psw-repeat">Repeat Password</label>
                                        <input type="password" class="form-control" placeholder="Repeat Password" name="psw-repeat" required>

                                        <label>
                                <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                              </label>

                                        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                        <div class="clearfix btn">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Sign Up</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </section>
    <section class="container-fluid">
        <div class="row mb-5 mt-5 bg-light  ">
            <div class=" col-lg-6 col-md-6 col-12 text-md-center p-5 ">
                <h1>Supplier</h1>
                <p class="text-capitalize">a person or organization that provides something needed such as a product or servicea person who administers the affairs of an organization</p>
                <hr>
                <div class="m-5 p-5 m-auto m-lg-4 p-md-5">
                    <button class="btn btn-outline-primary text-center" data-toggle="modal" data-target="#myModal2">Log In</button>

                    <button class="btn btn-outline-primary text-center" data-toggle="modal" data-target="#myModal3">Sign up</button>
                </div>

                <!-- The Modal -->
                <div class="modal fade" id="myModal2">

                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content ">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Log in</h4>
                                <button type="button " class="close " data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/action_page.php">
                                    <div class="form-group">
                                        <label for="email">Email address:</label>
                                        <input type="email" class="form-control" placeholder="Enter email" id="email">
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Password:</label>
                                        <input type="password" class="form-control" placeholder="Enter password" id="pwd">
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox"> Remember me
                                  </label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>

                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- The Modal -->
                <div class="modal fade" id="myModal3">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content ">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Log in</h4>
                                <button type="button " class="close " data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/action_page.php">
                                    <div class="form-group">
                                        <h1>Sign Up</h1>
                                        <p>Please fill in this form to create an account.</p>
                                        <hr>
                                        <div>
                                            <label for="email">Email address:</label>
                                            <input type="email" class="form-control" placeholder="Enter email" id="email">
                                        </div>
                                        <div>
                                            <label for="psw">Password:</label>
                                            <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>
                                        </div>
                                        <label for="psw-repeat">Repeat Password</label>
                                        <input type="password" class="form-control" placeholder="Repeat Password" name="psw-repeat" required>

                                        <label>
                                <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                              </label>

                                        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                        <div class="clearfix btn">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Sign Up</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12 p-md-5">
                <img src="img/supplier.jpg" class="img-fluid w-90px  ">
            </div>

    </section>
    <section class="container-fluid">

        <!-- for Grid -->
        <div class="row mb-5 mt-5 bg-light ">
            <div class="col-lg-6 col-md-6 col-12 p-md-5 ">
                <img src="img/client.jpg" class="img-fluid w-80px ">
            </div>
            <div class=" col-lg-6 col-md-6 col-12 text-md-center p-5 ">
                <h1>Client</h1>
                <p class="text-capitalize">A Custumer</p>
                <hr>
                <div class="m-5 p-5 m-auto m-lg-4 p-md-5">
                    <button class="btn btn-outline-primary text-center" data-toggle="modal" data-target="#myModal0">Log In</button>
                </div>

                <!-- The Modal -->
                <div class="modal fade" id="myModal0">

                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content ">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Log in</h4>
                                <button type="button " class="close " data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="/action_page.php">
                                    <div class="form-group">
                                        <label for="number">Mobile Number</label>
                                        <input type="number" class="form-control" placeholder="Enter phone number" id="number">
                                    </div>
                                    <div class="form-group">
                                        <label for="OTP">Enter OTP:</label>
                                        <input type="OTP" class="form-control" placeholder="Enter OTP" id="OTP">
                                    </div>
                                    <div class="form-group form-check">
                                        <label class="form-check-label">
                                                                      </label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="submit" class="btn btn-primary">Get OTP</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
    </section>



    <footer>
        <p class="text-center bg-dark text-white">@copyright Survive'sKit.com</p>
    </footer>
   
    <script src="https://cdn.tutorialjinni.com/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init({
            offset: 300,
            duration: 900
        });
    </script>

<script type="text" src="custom.js"></script>

   
</body>
</html>
