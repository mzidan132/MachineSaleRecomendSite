<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

include 'components/add_cart.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>quick view</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>

   <section class="quick-view">

      <h1 class="title">quick view</h1>

      <?php
      $pid = $_GET['pid'];
      $select_products = $conn->prepare("SELECT * FROM `products` WHERE id = ?");
      $select_products->execute([$pid]);
      if ($select_products->rowCount() > 0) {
         while ($fetch_products = $select_products->fetch(PDO::FETCH_ASSOC)) {
      ?>
            <form action="" method="post" class="box">
               <input type="hidden" name="pid" value="<?= $fetch_products['id']; ?>">
               <input type="hidden" name="name" value="<?= $fetch_products['name']; ?>">
               <input type="hidden" name="price" value="<?= $fetch_products['price']; ?>">
               <input type="hidden" name="image" value="<?= $fetch_products['image']; ?>">
               <input type="hidden" name="weight" value="<?= $fetch_products['weight']; ?>">
               <input type="hidden" name="hp" value="<?= $fetch_products['horsepower']; ?>">
               <input type="hidden" name="dep" value="<?= $fetch_products['depth']; ?>">
               <img src="uploaded_img/<?= $fetch_products['image']; ?>" alt="">
               <a href="category.php?category=<?= $fetch_products['category']; ?>" class="cat"><?= $fetch_products['category']; ?></a>
               <div class="name"><?= $fetch_products['name']; ?></div>
               <div class="flex">
                  <div class="price"><span>৳</span><?= $fetch_products['price']; ?></div>
                  <input type="number" name="qty" class="qty" min="1" max="99" value="1" maxlength="2">
                  <div class="weight"><p style="font-size:large;">ওজন</p><p style="font-size:large;"><?= $fetch_products['weight']; ?>টন</p></div>
                  <div class="hp"><p style="font-size:large;">ক্ষমতা</p><p style="font-size:large;"><?= $fetch_products['horsepower']; ?>hp</p></div>
                  <div class="dep"><p style="font-size:large;">গভীর</p><p style="font-size:large;"><?= $fetch_products['depth']; ?>মিঃ</p></div>
               </div>
               <button type="submit" name="add_to_cart" class="cart-btn">add to cart</button>
            </form>

            <p>
            <div style=" padding: 0 150px;text-size-adjust: inherit;size: legal;font-size: 20px;"><?= $fetch_products['desc']; ?></div>
            </p>
      <?php
         }
      } else {
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>

   </section>
















   <?php include 'components/footer.php'; ?>


   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>


</body>

</html>