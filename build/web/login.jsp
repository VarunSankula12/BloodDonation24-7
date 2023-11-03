<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="utf-8">
    <title>BloodLink</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Red+Rose:wght@600;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <script type="text/javascript">  
            
        function validateuser(){  
            
        var email=document.myform.email.value;
        var password=document.myform.password.value;
        
        
        var emailpattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
       
        if (email===""){
            Swal.fire("E-mail cannot be empty");           
            return false;
        }
        if(!email.match(emailpattern)){
            Swal.fire("Invalid Email format");             
            return false;
        }
        if (password===''){
           Swal.fire("password should not be empty");          
            return false;
            } 
        
    }  
    </script>
</head>

<body>
     <script>
        var successMessage = '${sessionScope.success}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("success"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.failed}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'error',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("failed"); %>
        }
          
    </script>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->
    <!-- Brand Start -->
    <div class="container-fluid bg-primary text-white pt-4 pb-5 d-none d-lg-flex">
        <div class="container pb-2">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex">
                    <i class="bi bi-telephone-inbound fs-2"></i>
                    <div class="ms-3">
                        <h5 class="text-white mb-0">Call Now</h5>
                        <span>+91 8555 8879 86</span>
                    </div>
                </div>
                <a href="index.html" class="h1 text-white mb-0">Blood<span class="" style="color: yellow">Care</span></a>
                <div class="d-flex">
                    <i class="bi bi-envelope fs-2"></i>
                    <div class="ms-3">
                        <h5 class="text-white mb-0">Mail Now</h5>
                        <span>info@codebook.in</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand End -->


    <!-- Navbar Start -->
    <div class="container-fluid sticky-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-white py-lg-0 px-lg-3">
                <a href="index.html" class="navbar-brand d-lg-none">
                    <h1 class="text-primary m-0">Blood<span class="text-warning">Care</span></h1>
                </a>
                <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav">
                        <a href="index.html" class="nav-item nav-link ">Home</a>
                        <a href="login.jsp" class="nav-item nav-link active">User</a>
                        <a href="admin-login.jsp" class="nav-item nav-link">Admin</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="service.jsp" class="nav-item nav-link">Services</a>
                
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                    </div>
                    <div class="ms-auto d-none d-lg-flex">
                        <a class="btn btn-danger ms-2" href="register.jsp">Register Now</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Page Header Start -->
   
    <!-- Page Header End -->

    
    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="col-12 pr-5" style="border: 1px solid #31d2f2;">
                <div class="row align-items-center">
                    <div class="col-md-7 mb-4 text-center">
                        <img src="img/bd6.png" alt="" width="600px">
                    </div>
                    <div class="col-md-5 ml-auto p-5" style="background-color: #692424e6;" >
                        <form action="loginAction.jsp" method="POST" id="myform" onsubmit="return validateuser()" name="myform" class="contactForm">
                           
                            <h2 class=" text-white mb-4">User Login</h2>
                            <div class="form-group mb-4 col-10"for="email">
                                <input type="text" id="email" class="form-control" placeholder="Email Addresss" name="email" >
                            </div>
                            <div class="form-group mb-3 col-10" for="password">
                                <input type="password" id="password" class="form-control pl-2" placeholder="password" name="password" >
                                 
                            </div>
                            
                            <div class="form-group">
                                <button class="btn btn-danger btn-pill col-md-10 justify-content-center text fw-bold" type="submit">Login</button>
                                <p class="small text-muted py-2">Dont't have an account ? <a href="register.jsp">Register</a></p> 
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->



    <!-- Footer Start -->
    <div class="container-fluid footer position-relative bg-dark text-white-50 py-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5 py-5">
                <div class="col-lg-6 pe-lg-5">
                    <a href="index.html" class="navbar-brand">
                        <h1 class="h1 text-primary mb-0">Blood<span class="" style="color: yellow">Care</span></h1>
                    </a>
                    <p class="fs-5 mb-4">Blood donation is a selfless act that involves voluntarily giving a portion of your own blood to be used for medical treatments and transfusions.</p>
                    <p><i class="fa fa-map-marker-alt me-2"></i>Lb nagar, hyderabad</p>
                    <p><i class="fa fa-phone-alt me-2"></i>+91 8555 8879 860</p>
                    <p><i class="fa fa-envelope me-2"></i>info@codebook.in</p>
                    
                </div>
                <div class="col-lg-6 ps-lg-5">
                    <div class="row g-5">
                         <div class="col-sm-12">
                            <h4 class="text-light mb-4">Popular Links</h4>
                            <a class="btn btn-link" href="index.html">Home</a>
                            <a class="btn btn-link" href="login.jsp">User</a>
                            <a class="btn btn-link" href="admin-login.jsp">Admin</a>
                            <a class="btn btn-link" href="about.jsp">About Us</a>
                            <a class="btn btn-link" href="service.jsp">Our Services</a>
                            <a class="btn btn-link" href="contact.jsp">Contact Us</a>
                            
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Copyright Start -->
    <div class="container-fluid copyright bg-dark text-white-50 py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-0">&copy; <a href="https://codebook.in/" target="_blank">Codebook</a>. All Rights Reserved.</p>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>