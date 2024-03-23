<?php 
require_once "modele/modele.class.php";

class Controleur 
{

    private $modele;

        public function __construct()
        {
            $this->modele = new Modele();
        }

        public function login($Email, $Mdp)
        {
        
            $user = $this->modele->findUser($Email, $Mdp);

            if($user == false)
            { 
                echo "false";
            }
            else
            {   
                $_SESSION['connecte']=true;
                $_SESSION['nom']=$user['NOM'];
                $_SESSION['prenom']=$user['PRENOM'];
                $_SESSION['email']=$user['EMAIL'];
                $_SESSION['id']=$user['IDU'];
                $_SESSION['lvl']=$user['NIVEAU'];
                
                header("Location: index.php");
                die();
            }
        }
}


