<?php

require_once 'Connexion.php';

/**
 * Retourne une liste de produits
 * @return array
 */
function getListProduits() {



    $donnees = []; // initialisation
    $monObjectConnexion = new Connexion();
    $bdd = $monObjectConnexion->getConnexion(); // avant $bdd = getConnection();



    $reponse = $bdd->query('SELECT * FROM `produit`');
    if ( $reponse ) {
        $donnees = $reponse->fetchAll(PDO::FETCH_ASSOC);
    }
    return $donnees;

}