<?php

require_once 'vue/connexion_vue.php';

if(isset($_POST['submit']))
 {
     $email=$_POST['email'];
     $mdp=$_POST['mdp'];
     
     $client = $controleur ->login($email,$mdp);
 }