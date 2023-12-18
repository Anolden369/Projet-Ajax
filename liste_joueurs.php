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
// Récupérer les joueurs de l'équipe sélectionnée dans la base de données
$equipe_id = $_POST["equipe_id"];
$sql = "SELECT * FROM joueur WHERE equipe_id = '$equipe_id' ORDER BY nom ASC, prenom ASC";
$result = $conn->query($sql);

// Afficher les options de la liste déroulante des joueurs
if ($result->num_rows > 0) {
    echo "
    <table class='table table-hover'>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Âge</th>
        <th>Poste</th>
        <th>Logo Equipe</th>
    </tr>
    </thead>
    <tbody>";
    while($row = $result->fetch_assoc()) {
        $equipe_id = $row["equipe_id"];
        $equipe_logo = $conn->query("SELECT img FROM equipe WHERE id = '$equipe_id'")->fetch_assoc()["img"];
        echo "
        <tr>
        <td>" . $row["id"] . "</td>
        <td>" . $row["nom"] . "</td>
        <td>" . $row["prenom"]."</td>
        <td>" . $row["age"] . "</td>
        <td>" . $row["position"] ."</td>
        <td><img src='$equipe_logo'></td>
        <tr>
        ";
    }
} else {
    echo "<option value=''>Aucun joueur trouvé pour cette équipe</option>";
}
echo "</tbody>
    </table>";
// Fermer la connexion à la base de données
$conn->close();
?>
