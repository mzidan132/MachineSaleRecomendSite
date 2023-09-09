<!-- <?php

      include 'components/connect.php';

      session_start();

      if (isset($_SESSION['user_id'])) {
         $user_id = $_SESSION['user_id'];
      } else {
         $user_id = '';
      };

      ?> -->

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body bgcolor="lightyellow">

   <!-- header section starts  -->
   <?php include 'components/user_header.php'; ?>
   <!-- header section ends -->

   <div class="heading">
      <h3>about us</h3>
      <p><a href="home.php">Home</a> <span> / About</span></p>
   </div>

   <!-- Our Ower -->
   <section class="card">

      <img src="images/toukir_sir.jpg" class="card-img" alt="...">

      <div class="doc">
         <h3 class="title">Our Instructor</h3>
         <br>
         <p> <b>Toukir Ahammed</b></p>
         <p> Lecturer, <br> Department of Computer Science & Engineering
            <br>
            <b>Office: </b> Room-AB3-1003<br> <b> Email: </b> toukir.ahammed@ewubd.edu
         </p>
         <br>
         <br>
      </div>

   </section>

   <!-- Our Team -->


   <section class="team">

      <h1 class="title">Our Team</h1>

      <div class="swiper-wrapper">
         <div class="box">
            <img src="images/arnab.jpg" alt="">

            <h2>Arnab Saha</h2>
            <h3>ID: 2019-2-60-087</h3>
         </div>

         <div class="box">
            <img src="images/anik.jpg" alt="">

            <h2>Md Anikur Rahaman</h2>
            <h3>ID: 2019-3-60-051</h3>
         </div>

         <div class="box">
            <img src="images/zidan.jpg" alt="">
            <h2>Zin Din Ziden</h2>
            <h3>ID: 2020-2-60-132</h3>
         </div>

   </section>

   <!-- about section starts  -->

   <section class="about">

      <div class="row">

         <div class="image">
            <img src="images/chem1.jpg" alt="">
         </div>

         <div class="content">
            <h3>Our Mission</h3>
            <p>By this chemical shop our mission is to upgrade the chemical industry.</p>
            <br>
            <br>
            <p> For centuries, chemistry has been vital part of our society but the innovations related to IT in chemistry we saw few so time to enhance this industry to enrich our economy </p>
         </div>

      </div>

   </section>

   <!-- about section ends -->

   <!-- steps section starts  -->

   <section class="steps">

      <h1 class="title">simple steps</h1>

      <div class="box-container">

         <div class="box">
            <img src="images/step-1.png" alt="">
            <h3>choose chemical</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nesciunt, dolorem.</p>
         </div>

         <div class="box">
            <img src="images/step-2.png" alt="">
            <h3>fast delivery</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nesciunt, dolorem.</p>
         </div>

         <div class="box">
            <img src="images/step-4.png" alt="">
            <h3>use carefuly</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nesciunt, dolorem.</p>
         </div>

      </div>

   </section>

   <!-- steps section ends -->

   <!-- reviews section starts  -->

   <section class="reviews">

      <h1 class="title">customer's reivews</h1>

      <div class="swiper reviews-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide">
               <img src="images/pic-1.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-2.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-3.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-4.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-5.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

            <div class="swiper-slide slide">
               <img src="images/pic-6.png" alt="">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos voluptate eligendi laborum molestias ut earum nulla sint voluptatum labore nemo.</p>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
            </div>

         </div>

         <div class="swiper-pagination"></div>

      </div>

   </section>

   <!-- reviews section ends -->



















   <!-- footer section starts  -->
   <?php include 'components/footer.php'; ?>
   <!-- footer section ends -->=






   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>

   <script>
      var swiper = new Swiper(".reviews-slider", {
         loop: true,
         grabCursor: true,
         spaceBetween: 20,
         pagination: {
            el: ".swiper-pagination",
            clickable: true,
         },
         breakpoints: {
            0: {
               slidesPerView: 1,
            },
            700: {
               slidesPerView: 2,
            },
            1024: {
               slidesPerView: 3,
            },
         },
      });
   </script>

</body>

</html>