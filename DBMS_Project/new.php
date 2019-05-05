<?php

$Login = $Signup = "";

session_start();
if(isset($_SESSION["login"]))
{


$firstname = $_SESSION["firstname"];

if($_SESSION["login"] == 1)
{
    $Login = "<a href = \"myprofile.php\">$firstname</a>";
    $Signup = "";
}
}
else
{
    $Login = "<a href = \"login.php\">Login</a>";
    $Signup = "<a href = \"signup.php\">Sign Up</a>";

}



?>

<!DOCTYPE html>
<html>
<head>
    <title>
        Hotel Booking Website.
    </title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
    <link rel="stylesheet" href="cards.css">
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
    <link rel='stylesheet prefetch' href='http://codepen.io/ChynoDeluxe/pen/eJPeEL'>
    
</head>
<body>
    <header>
        <nav>
            <div class="row clearfix">
                <img src="images/new1logo.png" class="logo">

                <ul class="main-nav">
                <li><a href="new.php">Home</a></li>
                <li><a href="orders.php">Orders</a></li>
                <li><a href="Rakes.php">Rakes</a></li>
                <li><a href="Dealers_Non-Traders.php">Dealers/Non-Traders</a></li>
                <li><a href="Dumps.php">Dumps</a></li>
                <li><a href="Competitors.php">Competitors</a></li>
                <li><a href="Production.php">Production</a></li>
                </ul>
            </div>
        </nav>
        <div class="main-content">
            <h1>WELCOME TO <span>BOOKAR</span>.<br>
             BOOK WORLD-CLASS HOTELS IN <span>AFFORDABLE PRICES</span></h1>
        </div>
    </header>
    <div class="blank" style="width:100%; height: 10px;"></div>
    <h1 style="font-family:Roboto;color:black;">Cement varities</h1>
    <div class="blank" style="width:100%; height: 10px;"></div>
    <div class="blog-card">
        <div class="photo photo1"></div>
        <div class="description">
            <h1 style="color: black">43-Grade</h1>
            <p class="summary" style="color: black">Superior grade of concrete and for economizing the project.Gigantic compressive strength,Volume stability,Corrosion Resistance and Low heat of hydration which is comparable to LHPC</p>
        </div>
    </div>
    <div class="blog-card alt" style="padding-right: 20px">
        <div class="photo photo2"></div>
        <div class="description">
            <h1 style="color: black">53-Grade</h1>
            <p class="summary" style="color: black">Calcium, Silica, Alumina and Iron strengthen the quality of this cementHigh-rise buildings.All types of R.C.C. works,Industrial works,Pre-stressed concrete work like bridges, silos, etc.Pre-cast elements such as Railway sleepers and concrete poles</p>
        </div>
    </div>
    <div class="blank" style="width:100%; height: 10px;"></div>
    <div class="blog-card">
        <div class="photo photo3"></div>
        <div class="description">
            <h1 style="color: black">PPC-grade</h1>
            <p class="summary" style="color: black">fully-automated, dry manufacturing process using state of the art technology under strict quality assurance at all stages of manufacturing with the help of the "ROBOTIC (POLAB)" system. PPC is manufactured by inter-grinding well-burnt OPC Clinker with gypsum and pozzolanic materials like power-station fly ash or silicious earths.</p>
        </div>
    </div>
</body>
</html>