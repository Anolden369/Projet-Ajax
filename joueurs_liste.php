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
$sql = "SELECT * FROM joueur";
$result = $conn->query($sql);

// Afficher les options de la liste déroulante des matchs
if ($result->num_rows > 0) {
    echo "
    <table class='table table-hover'>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Âge</th>
        <th>Position</th>
        <th>Équipe</th>
        <th>Logo Équipe</th>
    </tr>
    </thead>
";
    while($row = $result->fetch_assoc()) {
        $joueur_id = $row["id"];
        $nom= $row["nom"];
        $prenom = $row["prenom"];
        $position = $row["position"];
        $age = $row["age"];
        $equipe_id = $row["equipe_id"];
        // Récupérer les noms des équipes
        $equipe_nom = $conn->query("SELECT nom FROM equipe WHERE id = '$equipe_id'")->fetch_assoc()["nom"];
        $equipe_logo = $conn->query("SELECT img FROM equipe WHERE id = '$equipe_id'")->fetch_assoc()["img"];
        echo "
        <tr>
        <td>". $joueur_id . "</td>
        <td>" . $nom . "</td>
        <td>" . $prenom . "</td>
        <td>" . $age . "</td>
        <td>" . $position . "</td>
        <td>" . $equipe_nom . "</td>
        <td><img src='$equipe_logo'></td>
        </tr>
        ";
    }
} else {
    echo "<option value=''>Aucun match trouvé</option>";
}
echo "</table>";

// Fermer la connexion à la base de données
$conn->close();
?>
