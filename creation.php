<?php

require_once 'vue/creation_vue.php';

if(isset($_POST['submit'])) {
    // Récupérer les données soumises via le formulaire
    $login = $_POST['login'];
    $mdp = $_POST['mdp'];
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $adresse = $_POST['adresse'];
    $num = $_POST['num'];

    // Créer une instance de la classe Modele
    $modele = new Modele();

    // Appeler la méthode register de la classe Modele pour créer un nouvel utilisateur
    $inscription_reussie = $modele->register($login, $mdp, $nom, $prenom, $email, $adresse, $num);

    // Traiter la réponse de la méthode register
    if($inscription_reussie) {
        // L'inscription est réussie, vous pouvez rediriger l'utilisateur vers une page de connexion
        header("Location: connexion");
        exit();
    } else {
        // L'inscription a échoué, vous pouvez afficher un message d'erreur à l'utilisateur
        echo "L'inscription a échoué. Veuillez réessayer.";
    }
}