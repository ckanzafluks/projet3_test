<?php

require_once 'Connexion.php';

class Produits extends Connexion {


    public function __construct()
    {
        parent::__construct();
    }

    function getListProduits() {
        $donnees = []; // initialisation

        $bdd = $this->getConnexion();
        $reponse = $bdd->query('SELECT * FROM `produit`');
        if ( $reponse ) {
            $donnees = $reponse->fetchAll(PDO::FETCH_ASSOC);
        }
        return $donnees;
    }



}