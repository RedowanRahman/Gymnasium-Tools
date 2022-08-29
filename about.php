<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   
   <link rel="stylesheet" href="css/client.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about_bg.jpg" alt="">
      </div>

      <div class="content">
         <h3>Why Choose Us?</h3>
         <p>We are a manufacturing company of Gymnasium Tools. We provide Adjustable Dumbbell, Exercise Bench, Mini Stepper etc with Resistance Bands and many more items.</p>
         
         <a href="contact.php" class="btn">Contact Us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">Customer's Reviews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/unknown.jpg" alt="">
         <p>Great Products of Gym.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Shuvo Hossain</h3>
      </div>

      <div class="box">
         <img src="images/unknown.jpg" alt="">
         <p>Quality Service.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Kamal Ahmed</h3>
      </div>

      <div class="box">
         <img src="images/unknown.jpg" alt="">
         <p>Love this kind of online gym products.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Sumaiya Akter</h3>
      </div>

   </div>

</section>

<section class="authors">

   <h1 class="title">Authors</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/rafid.jpg" alt="">
         <div class="share">
            <a href="https://www.facebook.com/md.redowanrahman" target="_blank" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            
         </div>
         <h3>Md. Redowan Rahman Rafid</h3>
      </div>

      <div class="box">
         <img src="images/arnob.jpg" alt="">
         <div class="share">
            <a href="https://www.facebook.com/maruf.arnob.9" target="_blank" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            
         </div>
         <h3>Maruf Rusafi Arnob</h3>
      </div>

   </div>

</section>


<?php include 'footer.php'; ?>


<script src="js/script.js"></script>

</body>
</html>