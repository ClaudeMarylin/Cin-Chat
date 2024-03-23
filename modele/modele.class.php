<?php
class Modele
{
    private $PDO ; // instance de la classe PDO

    public function __construct (){
        $this -> PDO=null;
        try{
            $url ="mysql:host=localhost;dbname=cinechat;charset=utf8";
            $user="root";
            $mdp=""; 
            $this->PDO=new PDO($url, $user, $mdp);
        }
        catch(PDOException $exp){
            echo "Erreur de connexion à la bdd";
            echo $exp->getMessage();
        }
    }

    /*************************************************User*************************************************/

    public function findUser(string $Email, string $Mdp)
    {
        if($this-> PDO != null){
            $requete = "select * from utilisateur where Email=:Email and Mdp=:Mdp;";
            $select = $this-> PDO-> prepare($requete);
            $select->bindValue(":Email",$Email,PDO::PARAM_STR);
            $select->bindValue(":Mdp",$Mdp,PDO::PARAM_STR);
            $select-> execute();
            $user = $select -> fetch();
            return $user;
            
        }else{
            return null;
        }
    }


    public function register(string $login, string $mdp, string $nom, string $prenom, string $email, string $adresse, int $num)
    {
        if($this->PDO != null){
            // Vérifier si l'email est déjà utilisé
            $existingUser = $this->findUserByEmail($email);
            if($existingUser !== false){
                // L'email est déjà utilisé, retourner une erreur ou gérer le cas selon les besoins
                return false; // Exemple : retourner false pour indiquer un échec d'inscription
            }
            
            // Préparer la requête d'insertion
            $requete = "INSERT INTO utilisateur (LOGIN, MDP, NOM, PRENOM, EMAIL, ADRESSE, NUM, NIVEAU) VALUES (:login, :mdp, :nom, :prenom, :email, :adresse, :num, 1);";
            $insert = $this->PDO->prepare($requete);
            $insert->bindValue(":login", $login, PDO::PARAM_STR);
            $insert->bindValue(":mdp", $mdp, PDO::PARAM_STR);
            $insert->bindValue(":nom", $nom, PDO::PARAM_STR);
            $insert->bindValue(":prenom", $prenom, PDO::PARAM_STR);
            $insert->bindValue(":email", $email, PDO::PARAM_STR);
            $insert->bindValue(":adresse", $adresse, PDO::PARAM_STR);
            $insert->bindValue(":num", $num, PDO::PARAM_INT);
            
            // Exécuter la requête d'insertion
            $success = $insert->execute();
            return $success;
        }else{
            return false;
        }
    }   

    private function findUserByEmail(string $email)
    {
        if($this->PDO != null){
            $requete = "SELECT * FROM utilisateur WHERE EMAIL = :email;";
            $select = $this->PDO->prepare($requete);
            $select->bindValue(":email", $email, PDO::PARAM_STR);
            $select->execute();
            $user = $select->fetch();
            return $user ? $user : false;
        }else{
            return null;
        }
    }
}