<?php
//fonction permettant de se connecter à la bdd
function connecter()
  {
    $servername = 'localhost';
    $username   = 'root';
    $password   = 'root';
    $dbname     = 'ajax';
    $conn  = mysqli_connect($servername,$username,$password,$dbname);
// instruction qui permet de conserver les accents lors de la connexion au serveur de bases de données
    mysqli_query($conn, 'SET NAMES UTF8');
    return $conn;
  }
?>