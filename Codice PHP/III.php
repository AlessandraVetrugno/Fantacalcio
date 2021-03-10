<?php

$host = 'localhost';
$dbname = 'fantacalcio';
$user = 'root';
$psswd = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";

$pdo = new PDO($dsn, $user, $psswd);

//Il punteggio del lettore lo consideriamo come già calcolato; Infatti seguendo la logica del nostro diagramma ER il punteggio dovrebbe
//essere calcolato nel back-end dell'ipotetico sito vero e proprio

$stmt = $pdo->query('SELECT lettore.nome_utente, lettore.punteggio FROM lettore ORDER BY lettore.punteggio DESC;');

$lettori = array();

$pos = 1;

while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
    $lettori[] = array($pos++, $row['nome_utente'], $row['punteggio']);

echo json_encode(array('Posizione #', 'Nominativo', 'Punteggio', $lettori));