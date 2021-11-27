<% response.setHeader("Cache-Control", "no-cache");

//Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store");

//Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0);

//Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache");
//HTTP 1.0 backward enter code here
 %>
  <%@ include file = "navbar.html" %>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Index</title>
 <link rel="preconnect " href="https://fonts.gstatic.com ">
 <link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap"
	rel="stylesheet">
 
    <link href="https://fonts.googleapis.com/css2?family=Krona+One&display=swap " rel="stylesheet ">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>	
  *
             .carousel-inner img {
            width: 100%;
        }
   
      
</style>
</head>
<body >
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/IMG-20210221135459.jpg" class="d-block w-100" alt="Sanitizer width="1100" height="500" >
        <div class="carousel-caption d-none d-md-block">
          <h5>Sanitizer</h5>
          <p>Original</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/protection-kits-COVID19.jpg" class="d-block w-100" alt="mask width="1100" height="500">
        <div class="carousel-caption d-none d-md-block">
          <h5>Mask</h5>
          <p>Protection kit</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/PTI16-03-2020_000112A-1588325900.jpg" class="d-block w-100" alt="instruments width="1100" height="500">
        <div class="carousel-caption d-none d-md-block">
          <h5>Instruments</h5>
          <p>temperature instrument</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div>



 <!-- About US -->
    <section>
        <div class=" container-fluid ">
            <div class="container-fluid " data-aos="fade-left">
                <h1 class=" text-center text-primary pt-3 ">About Us</h1>
                <hr class="w-25 mx-auto pt-5 ">
                <!-- for Grid -->
                <div class="row mb-5 container-fluid ">
                    <div class="col-lg-6 col-md-6 col-12 ">
                        <img src="img/c1.jpg " class="img-fluid w-80px ">
                    </div>
                    <div class=" col-lg-6 col-md-6 col-12 ">
                        <h1>Personal Care Pack</h1>
                        <hr>
                        <p class="pt-2 ">These include vitals monitoring kit that contains a digital thermometer, an oximeter for measuring oxygen levels in blood and a digital BP measuring machine.<br>"Under our home consultation packages, we are currently offering alternate-day
                            video consultation with a doctor, taking health updates through timely follow-ups with our nurses twice a day, dietitian consultation and rehabilitation. We are also providing a 24/7 helpline service and patients can call the
                            helpline for any queries</p>
                        <button class="btn bg-primary text-white">Details</button>
                    </div>
                </div>
            </div>
            </div>
            </div>
    </section>
   </div>

<!-- events -->

    <div class="row text-center mb-5 container-fluid p-md-5 box " >
        <div class="col-lg-4 col-md-4 col-12 ">
            <div class="card " style="width:400px;height: ">
                <img class="Sanitzer" src="img/Sani.jpg" alt="Card image">
                <div class="card-body ">
                    <h4 class="card-title">Hand Sanitizer </h4>
                    <p class="card-text">Hand sanitizer is a liquid, gel or foam generally used to kill the vast majority of viruses / bacteria / microorganisms on the hands.</p>
                    <a href="#" class="btn btn-primary">Click Here</a>
                </div>
            </div>
        </div>

        <!-- block2 -->
        
        <div class="col-lg-4 col-md-4 col-12">
            <div class="card" style="width:400px">
                <img class="ppt suit" src="img/ppt suit.jpg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">Protection Suit </h4>
                    <p class="card-text">Instead of just one protective piece of clothing, PPE actually refers to a whole host of protective gear including a suit, gloves, self-contained respirators, eye protection, boots, and hoods</p>
                    <a href="#" class="btn btn-primary">Click Here</a>
                </div>
            </div>
        </div>
        <!-- block 3     -->
        <div class="col-lg-4 col-md-4 col-12">
            <div class="card" style="width:400px">
                <img class="ppt suit" src="img/face.jpeg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">Protection Suit </h4>
                    <p class="card-text">Instead of just one protective piece of clothing, PPE actually refers to a whole host of protective gear including a suit, gloves, self-contained respirators, eye protection, boots, and hoods</p>
                    <a href="#" class="btn btn-primary">Click Here</a>
                </div>
        
            </div>
        </div>
    </div>
    </div>
      <!-- contact us -->
    <section class="bg-primary text-white ">
        <article class="py-4 text-center  ">
            <div >
                <h3 class="display-5"> +91 8827729902 <br> +91 9300023947</h3>
                <p>If you want best service Call us now.</p>
                <button class="btn btn-warning">Contact Now</button>
            </div>
       
        </article>
    </section>
    </div>
   
    <!-- galley -->

    <section>
        <div class="container " data-aos="slide-right">
            <h1 class=" text-center text-primary pt-5 con ">Gallery</h1>
            <hr class="w-25 mx-auto pt-5 ">
            <div class="row btn-group gallerys">
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <a href="covid19 test kit.jpg" target="_blank">
                        <img src="img/7.jpg" class="img-fluid">
                    </a>
                </div>
                <!-- im2 -->
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <img src="img/2.jpeg" class="img-fluid">
                </div>
                <!-- img3 -->
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <img src="img/3thermometer.jpg" class="img-fluid">
                </div>

                <!-- img4 -->
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <img src="img/4.jpg" class="img-fluid">
                </div>
                <!-- img5 -->
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <img src="img/5.jpg" class="img-fluid">
                </div>
                <!-- img6 -->
                <div class="col-lg-4 col-md-2 col-12 mb-4">
                    <img src="img/6.jpg" class="img-fluid">
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