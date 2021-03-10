<?php

$host = 'localhost';
$dbname = 'fantacalcio';
$user = 'root';
$psswd = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";

$pdo = new PDO($dsn, $user, $psswd);


$stmt = $pdo->query('SELECT giocatore.nome, giocatore.cognome, gioca.numero_gol
FROM giocatore, gioca WHERE giocatore.id = gioca.id_giocatore AND gioca.numero_gol > 0;');

$giocatori = array();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
    if (array_key_exists($row['nome'].' '.$row['cognome'], $giocatori))
        $giocatori[$row['nome'].' '.$row['cognome']] += $row['numero_gol'];
    else
        $giocatori[$row['nome'].' '.$row['cognome']] = (int) $row['numero_gol'];

ksort($giocatori);

$giocatori_formattato = array();

$pos = 1;

foreach ($giocatori as $giocatore => $numero_gol)
    $giocatori_formattato[] = array($pos++, $giocatore, $numero_gol);

echo json_encode(array('Posizione #', 'Nominativo', 'Totale gol segnati', $giocatori_formattato));