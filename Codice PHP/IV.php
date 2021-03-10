<?php

$host = 'localhost';
$dbname = 'fantacalcio';
$user = 'root';
$psswd = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";

$pdo = new PDO($dsn, $user, $psswd);

//Il concetto del punteggio dell'esercizio precedente viene applicato anche in questo caso

$stmt = $pdo->query('SELECT lettore.nome_utente, lettore.punteggio FROM lettore ORDER BY lettore.punteggio DESC LIMIT 0, 5;');

$lettori = array();

$pos = 1;

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
    $lettori[] = array($pos++, $row['nome_utente'], $row['punteggio']);

echo json_encode(array('Posizione #', 'Nominativo', 'Punteggio', $lettori));