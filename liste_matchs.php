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
$equipe_id = $_POST["equipe_id"];
$sql = "SELECT * FROM matchrugby WHERE equipe_domicile_id = '$equipe_id' OR equipe_exterieur_id = '$equipe_id' ORDER BY date ASC";
$result = $conn->query($sql);

// Afficher les options de la liste déroulante des matchs
if ($result->num_rows > 0) {
    echo "
    <table class='table table-hover'>
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Logo Équipe domicile</th>
        <th>Équipe domicile</th>
        <th>Logo Équipe extérieure</th>
        <th>Équipe extérieure</th>
        <th>Score domicile</th>
        <th>Score extérieur</th>
    </tr>
    </thead>
";
    while($row = $result->fetch_assoc()) {
        date_default_timezone_set('Europe/Paris');
        $match_id = $row["id"];
        $date = date("d/m/Y", strtotime($row["date"]));
        $equipe_dom_id = $row["equipe_domicile_id"];
        $equipe_ext_id = $row["equipe_exterieur_id"];
        $score_domicile = $row["score_domicile"];
        $score_exterieur = $row["score_exterieur"];
        // Récupérer les noms des équipes
        $equipe_dom = $conn->query("SELECT nom FROM equipe WHERE id = '$equipe_dom_id'")->fetch_assoc()["nom"];
        $equipe_ext = $conn->query("SELECT nom FROM equipe WHERE id = '$equipe_ext_id'")->fetch_assoc()["nom"];
        $equipe_dom1 = $conn->query("SELECT img FROM equipe WHERE id = '$equipe_dom_id'")->fetch_assoc()["img"];
        $equipe_ext1 = $conn->query("SELECT img FROM equipe WHERE id = '$equipe_ext_id'")->fetch_assoc()["img"];
        echo "
        <tr>
        <td>". $match_id . "</td>
        <td>" . $date . "</td>
        <td><img src='$equipe_dom1'></td>
        <td>" . $equipe_dom . "</td>
        <td><img src='$equipe_ext1'></td>
        <td>" . $equipe_ext . "</td>
        <td>" . $score_domicile . "</td>
        <td>" . $score_exterieur ."</td>
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
