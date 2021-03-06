<?php

require_once 'model/Connexion.php';
require_once 'model/PostsMapper.php';
require_once 'model/Posts.php';


function afficherPageAccueil() {

    $loader = new \Twig\Loader\FilesystemLoader('view/frontend/');
    $twig = new \Twig\Environment($loader);
    $template = $twig->load('accueil.html');
    echo $template->render();
}

function afficherPageContact() {
    $loader = new \Twig\Loader\FilesystemLoader('view/frontend/');
    $twig = new \Twig\Environment($loader);
    $template = $twig->load('contact.html');

    $tab = [
        'mavariable1'  => 'toto1',
        'mavariable2'  => 'toto2',
        'mavariable3'  => 'toto3',
    ];
    echo $template->render($tab);
}

function afficherPageBlog() {

    // On appelle notre mapper pour récupérer notre liste de posts
    $postMapper = new PostsMapper();
    $listPosts  = $postMapper->getListPosts();

    $loader = new \Twig\Loader\FilesystemLoader('view/frontend/');
    $twig = new \Twig\Environment($loader);
    $template = $twig->load('blog.html');

    $tab = [
        'listPosts'    => $listPosts
    ];
    echo $template->render($tab);

}


























return;
// Chargement des classes
require_once('model/PostsManager.php');
require_once('model/CommentsManager.php');

/**
 * Liste des articles
 */
function listPosts() {
    $postManager = new PostsManager(); // Création d'un objet
    $posts = $postManager->getPosts(); // Appel d'une fonction de cet objet

    require('view/listPostsView.php');
}

/**
 * Affichage d'un article avec ses commentaires
 */
function post() {
    $postManager = new PostsManager();
    $commentManager = new CommentsManager();

    $post = $postManager->getPost($_GET['id']);
    $comments = $commentManager->getComments($_GET['id']);

    require('view/postView.php');
}

/**
 * Ajout d'un commentaire
 * @param int $postId
 * @param string $author
 * @param string $comment
 * @throws Exception
 */
function addComment($postId, $author, $comment) {
    $commentManager = new CommentsManager();

    $affectedLines = $commentManager->postComment($postId, $author, $comment);

    if ($affectedLines === false) {
        throw new Exception('Impossible d\'ajouter le commentaire !');
    } else {
        header('Location: index.php?action=post&id=' . $postId);
    }
}

/**
 * Signaler un commentaire
 * @throws Exception
 */
function alertComment() {
    $commentManager = new CommentsManager();
    $change = $commentManager->alertcomment($_GET['comment_id']);
    if ($change === false) {
        throw new Exception('Impossible de signaler le commentaire !');
    } else {
        header('Location: index.php?action=post&id=' . $_GET['id']);
    }
}

/**
 * Vers la page de connexion
 */
function connectView() {

    require('view/connectView.php');
}

/**
 * Vers la page 404
 */
function page_404() {

    require('view/page_404.php');
}
