<?php

$host = 'localhost';
$dbname = 'fantacalcio';
$user = 'root';
$psswd = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";

$pdo = new PDO($dsn, $user, $psswd);

if (empty($_GET['user']))
    return;

$username = $_GET['user'];

$stmt = $pdo->query("SELECT giocatore.nome, giocatore.cognome, giocatore.ruolo FROM lettore, giocatore, compra WHERE lettore.id = compra.id_lettore 
AND compra.id_giocatore = giocatore.id AND lettore.nome_utente = '$username';" );

$giocatori = array();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
    $giocatori[] = array($row['nome'].' '.$row['cognome'], $row['ruolo']);

echo json_encode(array('Nominativo', 'Ruolo', $giocatori));