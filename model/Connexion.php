<?php

class Connexion {

    public $host = '';
    private $dbname = '';
    public $username = '';
    public $password = '';


    public function __construct()
    {
        $this->host     = 'localhost';
        $this->dbname   = 'blog';
        $this->username = 'root';
        $this->password = 'root';
    }

    public function getConnexion() {
        try {
            $bdd = new PDO('mysql:host='.$this->host.';dbname='.$this->dbname.';charset=utf8', $this->username, $this->password);
        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
        return $bdd;
    }

    public function getDbName() {
        return $this->dbname;
    }





}





