<?php
// Connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "ajax";

$conn = mysqli_connect($servername, $username, $password, $dbname);
mysqli_query($conn, 'SET NAMES UTF8');
if ($conn->connect_error) {
    die("Connexion échouée: " . $conn->connect_error);
}

// Récupérer les équipes dans la base de données
$sql = "SELECT id, nom FROM equipe ORDER BY nom ASC";
$result = $conn->query($sql);

// Afficher les options de la liste déroulante des équipes
if ($result->num_rows > 0) {
    echo "<option value=''>Aucune équipe trouvée</option>";
    while($row = $result->fetch_assoc()) {
        echo "<option value='" . $row["id"] . "'>" . $row["nom"] . "</option>";
    }
} else {
    echo "<option value=''>Aucune équipe trouvée</option>";
}

// Fermer la connexion à la base de données
$conn->close();
?>
