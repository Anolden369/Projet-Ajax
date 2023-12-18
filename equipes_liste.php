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

// Récupérer les matchs de l'équipe sélectionnée dans la base de données
$sql = "SELECT * FROM equipe";
$result = $conn->query($sql);

// Afficher les options de la liste déroulante des matchs
if ($result->num_rows > 0) {
    echo "
    <table class='table table-hover'>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Ville</th>
        <th>Logo</th>
    </tr>
    </thead>
";
    while($row = $result->fetch_assoc()) {
        date_default_timezone_set('Europe/Paris');
        $equipe_id = $row["id"];
        $nom = $row["nom"];
        $ville = $row["ville"];
        $logo = $row["img"];
        // Récupérer les noms des équipes
        echo "
        <tr>
        <td>". $equipe_id . "</td>
        <td>" . $nom . "</td>
        <td>" . $ville . "</td>
        <td><img src='$logo'></td>

        </tr>
        ";
    }
} else {
    echo "<option value=''>Aucun match trouvé pour cette équipe</option>";
}
echo "</table>";

// Fermer la connexion à la base de données
$conn->close();
?>
