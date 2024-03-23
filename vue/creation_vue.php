<main id="main">
    <section id="contact" class="contact mb-5">
        <div class="container" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-lg-6"> <!-- Add margin top -->
                    <div class="form mt-3">
                        <form method="post" role="form" class="php-email-form">
                            <h1 class="text-center mb-4">Connexion</h1> <!-- Center the heading -->
                            <div class="row">
                                <div class="form-group col-md-6">
                                <label for="email">Nom</label>
                                    <input type="text" name="nom" class="form-control" id="nom" placeholder="John" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="prenom">Prénom</label>
                                    <input type="text" class="form-control" name="prenom" id="prenom" placeholder="Smith" required>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">Adresse email</label>
                                <input type="email" name="email" class="form-control" id="email" placeholder="exemple@gmail.com" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="login">Nom d'utilisateur</label>
                                <input type="text" name="login" class="form-control" id="login" placeholder="JohnSmith123" required>
                            </div>               
                            <div class="row">
                                <div class="form-group col-md-6">
                                <label for="num">Numéro de téléphone</label>
                                    <input type="text" name="num" class="form-control" id="num" placeholder="06 05 04 03 02" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="adresse">Adresse</label>
                                    <input type="text" class="form-control" name="adresse" id="adresse" placeholder="12 Avenue des champs É lysée" required>
                                </div>
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
</main><!-- End #main -->
