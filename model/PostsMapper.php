<?php

class PostsMapper extends Connexion {


    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Retourne un tableau de posts
     * @return array
     */
    public function getListPosts () {

        // 1°) Je prépare ma requete SQL
        $list = $this->getConnexion()->prepare("SELECT * FROM posts");
        //$list->bindParam(':offset', $offset, PDO::PARAM_INT);

        // 2°) On execute notre requete préparée
        $list->execute();

        // 3°) On recupère notre résultat mysql dans un tableau
        $resultDb = $list->fetchAll(PDO::FETCH_ASSOC);


        $listPost = array(); // Initialisation de notre tableau

        // 4°) Pour chaque résultat, on boucle sur chaque ligne
        foreach ($resultDb as $key => $dataRow) {

            // 4°) On instance notre objet avec la ligne de résultat
            $postObject = new Posts();
            $postObject->setIdPost($dataRow['id_post']);
            $postObject->setTitre($dataRow['titre']);
            $postObject->setChapo($dataRow['chapo']);
            $postObject->setContenu($dataRow['contenu']);
            $postObject->setDatePub($dataRow['date_pub']);
            $postObject->setDateMaj($dataRow['date_maj']);

            // 6°) On met l'objet dans notre tableau à retourner
            $listPost[] = $postObject;
        }

        // 7°) On retourne notre tableau d'objet
        return $listPost;
    }

    //Récupere un article en particulier
    public function getArticle ($id) {
        $query = $this->db->prepare(
            "SELECT posts.id, posts.title, posts.chapo, posts.content, posts.date_added, posts.last_updated, users.nickname 
            FROM posts JOIN users ON posts.author = users.id WHERE posts.id = :id");
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $article = $query->fetch();
        $commentMapper = new CommentManager;
        $nbcomments = $commentMapper->getNbComments($id);
        $obj = new Post(
            $article['id'],
            $article['title'],
            $article['chapo'],
            $article['content'],
            $article['nickname'],
            $article['date_added'],
            $article['last_updated'],
            $nbcomments);
        return $obj;
    }

    //Ajoute un article
    public function addArticle($title, $chapo, $content, $id) {
        $add = $this->db->prepare(
            "INSERT INTO posts(title, chapo, content, author, date_added) VALUES (':title', ':chapo', ':content', :id, CURRENT_TIMESTAMP)");
        $add->bindParam(':id', $id, PDO::PARAM_INT);
        $add->bindParam(':title', $title, PDO::PARAM_STR);
        $add->bindParam(':chapo', $chapo, PDO::PARAM_STR);
        $add->bindParam(':content', $content, PDO::PARAM_STR);
        $add->execute(array(':title' => $title, ':chapo' => $chapo, ':content' => $content));
        if ($add == false) {
            return false;
        } else {
            $last = $this->getList(1);
            return $last[0];
        }
    }

    //Supprime l'article
    public function deleteArticle($article) {
        $this->db->prepare("DELETE FROM posts WHERE id=?")->execute(array($id));
    }

    //MAJ l'article
    public function updateArticle($title, $chapo, $content, $id) {
        $maj = $this->db->prepare(
            "UPDATE posts SET title=':title', chapo=':chapo', content=':content', last_updated=CURRENT_TIMESTAMP WHERE id=:id"
        );
        $maj->bindParam(':id', $id, PDO::PARAM_INT);
        $maj->execute(array(':title' => $title, ':chapo' => $chapo, ':content' => $content));
    }

}