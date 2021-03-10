<?php

$host = 'localhost';
$dbname = 'fantacalcio';
$user = 'root';
$psswd = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";

$pdo = new PDO($dsn, $user, $psswd);

$stmt = $pdo->query('SELECT giocatore.nome, giocatore.cognome, gioca.voto
FROM giocatore, gioca WHERE giocatore.id = gioca.id_giocatore;');

$voti_giocatori = array();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
    $voti_giocatori[$row['nome'].' '.$row['cognome']][] = (int) $row['voto'];

$media_voti_giocatori = array();

$pos = 1;

foreach ($voti_giocatori as $giocatore => $voti)
    $media_voti_giocatori[] = array($pos++, $giocatore, array_sum($voti) / count($voti));

ksort($media_voti_giocatori);

echo json_encode(array('Posizione #', 'Nominativo', 'Media voti', array_slice($media_voti_giocatori,0, 10)));