<?php
	session_start(); 
    
    require "controller/controleur.class.php";

    $controleur=new Controleur();

    include "includes/header.php";

    ob_start();
    
        if (isset($_GET['page'])){
            $page = $_GET['page']; 
        }else {
           $page ="accueil"; 
        }
        
        switch ($page){
            case "accueil": require_once("accueil.php"); break; 
            case "connexion": require_once("connexion.php"); break;
            case "creation": require_once("creation.php"); break; 
            case "contact": require_once("contact.php"); break;
            case "compte": require_once("compte.php"); break;
            case "logout" : 
                session_destroy(); 
                unset ($_SESSION['login']); 
                header("Location: index.php"); 
                break;
            default:
            http_response_code(404);
            require_once("404.php");
            break;
        }
            
include "includes/footer.php";