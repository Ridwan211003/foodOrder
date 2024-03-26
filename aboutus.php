<?php
session_start();
?>

<html>

  <head>
    <title> TENTANG KAMI | YUMMY SNACKS' </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/aboutus.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>

  
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">YUMMY SNACKS</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Halaman Utama</a></li>
            <li class="active"><a href="aboutus.php">Tentang Kami</a></li>
            <li><a href="contactus.php">Kontak kami</a></li>
          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Selamat Datang <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">ADMIN CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Selamat Datang <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Daftar Menu </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Keranjang
            (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
            </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Admin Sign-up</a></li>
          
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Admin Login</a></li>

            </ul>
            </li>
          </ul>

<?php
}
?>
        </div>

      </div>
    </nav>

    <div class="wide">
    <div class="item">
      <img src="images/banner2.png" style="width:100%;">
        
        
        <h3 style="color: black; font-family: 'Times New Roman'; text-shadow: 2px 2px 5px darkgrey; text-align:justify"><p>TENTANG KAMI :<p>
        Kami adalah tim kuliner yang berdedikasi untuk menghadirkan pengalaman kuliner terbaik bagi Anda. Dengan cinta dan lidah yang beragam, 
        kami menggabungkan inovasi dengan cita rasa autentik untuk menciptakan hidangan yang menggugah selera dan memuaskan. Setiap sajian kami dirancang dengan teliti, 
        menggunakan bahan segar berkualitas tinggi untuk menciptakan hidangan yang lezat dan bergizi. 
        Kami berkomitmen untuk memberikan pelayanan yang ramah, sehingga Anda dapat menikmati santapan yang menyenangkan di setiap kunjungan. 
        Bersama-sama, kami berbagi kecintaan terhadap makanan dan berharap dapat mempersembahkan pengalaman kuliner yang tak terlupakan bagi Anda.
        <p>Yummy Snacks menyediakan beberapa macam jajanan kekinian yang sedang hits di kalangan masyarakat. 
        Terdapat 5 macam kategori produk yang tersedia, yaitu cake & brownies, danish & pastry, bread, japan food, dan korean food.</p>
        <p>Dalam website Yummy Snacks, tersedia informasi berupa menu serta harga, diskon atau promo, menu best seller, 
        serta kontak atau sosial media Yummy Snacks. Kami memastikan kelezatan jajanan anda hingga gigitan terakhir.</p></h3>
        <br>
        <h3 style="color: white">Order food & beverages online from restaurants near & around you. <h3 style="color: white">We deliver food from your neighborhood local joints, your favorite cafes, luxurious & elite restaurants in your area,</h3><h3 style="color : white"> and also from chains like Dominos, KFC, Burger King, Pizza Hut, FreshMenu, Mc Donald's, Subway, Faasos, Cafe Coffee Day, Taco Bell, and more. Exciting bit?</h3><h3 style="color : white"> We place no minimum order restrictions! Order in as little (or as much) as you'd like. We'll Swiggy it to you!</h3></h3>
    </div>

    
         </body>
</html>