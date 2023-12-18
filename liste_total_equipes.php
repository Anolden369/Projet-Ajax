<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Top 14</title>
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>
  <style>
    /* Reset CSS */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    
    body {
      background-color: #000000;
      color: #fff;
      font-family: Arial, sans-serif;
      font-size: 16px;
    }

    /* Header */
    header {
      background-image: url("match-rugby.jpg");
      background-size: cover;
      height: 250px;
      position: relative;
    }

    /* Header Content */
    .header-content {
      background-color: rgb(0, 0, 0);
      bottom: 0;
      color: #000000;
      display: flex;
      flex-direction: column;
      justify-content: center;
      left: 0;
      position: absolute;
      right: 0;
      top: 0;
    }

    .header-content h1 {
      font-size: 60px;
      margin: 0;
      text-align: center;
      text-transform: uppercase;
    }

    .header-content p {
      font-size: 24px;
      margin: 20px 0 0;
      text-align: center;
      color:#ffffff;
    }

    /* Logo */
    .logo {
      display: inline-block;
      margin-right: 200px;
      margin-top: 10px;
      width: 200px;
      position: relative;
      right: 200px;
      bottom: 80px;
    }

    .logo img {
      display: block;
      width: 100%;
    }

    /* Navigation */
    nav {
      justify-content: center;
      margin-top: -250px;
      position: relative;
      right: -50px;
      bottom: -50px;
      margin-right: 240px;
    }

    nav ul {
      border-top: 5px solid #FFD700;
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    nav li {
      display: inline-block;
      margin: 0 15px;
    }

    nav a {
      color: #ffffff;
      display: block;
      font-size: 18px;
      line-height: 1.5;
      padding: 10px 15px;
      text-decoration: none;
      text-transform: uppercase;
      transition: all 0.3s ease-in-out;
    }

    nav a:hover {
      background-color: #FFD700;
      color: #000000;
      border-radius: 10px;
      position : relative;
      top : 10px;
    }

    /* Content */
    #content {
      margin-top: 100px;
      padding: 20px;
      text-align: center;
    }

    /* Footer */
    footer {
      background-color: #FFD700;
      color: #000000;
      padding: 20px 0;
      text-align: center;
      position: relative;
      top: 439px;
    }
    
    /* Container */
    .container {
      max-width: 1000px;
      margin: 0 auto;
    }
    
    td, th {
      color: #FFD700;
    }

    h1, label{
      color: #FFD700;
    }

    .positioned {
      position: relative;
      bottom: 750px;
      left: -50px;
    }

    .position {
      position: relative;
      bottom: -50px;
      left: -1px;
    }

  </style>
</head>
<body>
  <header>
    <div class="header-content">
      <div class="container">
        <a href="index.html" class="logo"><img src="logo/top-14.png" alt="Logo"></a>
        <nav>
          <ul>
            <li><a href="index.html">Accueil</a></li>
            <li><a href="liste_total_matchs.php">Matchs</a></li>
            <li><a href="liste_total_equipes.php">Equipes</a></li>
            <li><a href="liste_total_joueurs.php">Joueurs</a></li>
            <li><a href="eq.html">Contact</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <body>
    <div class="container">
        <h1>Championnat TOP 14 - Rugby</h1>
        <br>
        <div class="row">
            <div class="col-md-4">
                <label>Liste de toutes les équipes du Championnat :</label>
                <ul id="equipes-list"></ul>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            // charger la liste des matchs au chargement de la page
            $.ajax({
                url: "equipes_liste.php",
                type: "GET",
                success: function(data){
                    $("#equipes-list").html(data);
                }
            });
        });
    </script>
</body>

    <footer>
      <div class="container">
        <p>© 2023 Top 14.  Tous droits réservés.</p>
      </div>
    </footer>
  </body>
  </html>
