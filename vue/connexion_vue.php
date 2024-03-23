<main id="main">
    <section id="contact" class="contact mb-5">
        <div class="container" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-lg-6"> <!-- Add margin top -->
                    <div class="form mt-3">
                        <form method="post" role="form" class="php-email-form">
                            <h1 class="text-center mb-4">Connexion</h1> <!-- Center the heading -->
                            <div class="text-center mb-4">
                                <a href="creation">Pas encore de compte ?</a>
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">Adresse email</label>
                                <input type="email" name="email" class="form-control" id="email" placeholder="exemple@gmail.com" required>
                            </div>              
                            <div class="form-group mb-3">
                                <label for="mdp">Mot de passe</label>
                                <input type="password" class="form-control" name="mdp" id="mdp" placeholder="●●●●●●●●●●" required>
                            </div>                
                            <div class="text-center mb-4">
                                <a href="oublier">Mot de passe oublié ?</a>
                            </div>
                            <div class="text-center">
                                <button type="submit" name="submit" class="btn btn-primary btn-block bouton_valider">Se connecter</button>
                            </div>
                        </form>
                    </div><!-- End Contact Form -->
                </div>
            </div>
            
        </div>
    </section>

    <?php
    $nom = $_SESSION['nom'];
    $prenom = $_SESSION['prenom'];
    $email = $_SESSION['email'];
    $id = $_SESSION['id'];
    $lvl = $_SESSION['lvl'];
    $connecte = $_SESSION['connecte'];
?>

                <p><strong>Nom:</strong> <?php echo $nom; ?></p>
                <p><strong>Prénom:</strong> <?php echo $prenom; ?></p>
                <p><strong>Email:</strong> <?php echo $email; ?></p>
        
</main><!-- End #main -->
