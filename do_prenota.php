<?php

	$email = $_REQUEST["email"];
	$nome = $_REQUEST["nome"];
	$cognome = $_REQUEST["cognome"];
	$telefono = $_REQUEST["telefono"];

  $veicolo = $_REQUEST["veicolo"];
  $da_gg = $_REQUEST["da_gg"];
  $da_ora = $_REQUEST["da_ora"];
  $a_gg = $_REQUEST["a_gg"];
  $a_ora = $_REQUEST["a_ora"];
  $lavaggio = $_REQUEST["lavaggio"];
  $note = $_REQUEST["note"];
  
  $servername = "localhost";
  $username = "root";
  $pwdserver = "matec";
  $dbname = "autorimessa";
  
  $conn = mysqli_connect($servername,$username,$pwdserver);
  if (!$conn) 
	  die("Errore nella connessione al server $servername");
  $seldb = mysqli_select_db($conn,$dbname);
  if (!$seldb)
	  die("Errore nella connessione all'archivio $dbname");
  
  $query = "INSERT INTO clienti(email,nome,cognome,telefono)
            VALUES ('$email','$nome','$cognome','$telefono')";
  $result = mysqli_query($conn,$query);
  if (!$result)
	  die("Errore nella registrazione dell'utente: $query");
  
  $query = "INSERT INTO ordini(email,veicolo,da_gg,da_ora,a_gg,a_ora,lavaggio,note)
            VALUES ('$email','$veicolo','$da_gg','$da_ora','$a_gg','$a_ora','$lavaggio','$note')";
  $result = mysqli_query($conn,$query);
  if (!$result)
	  die("Errore nella registrazione dell'utente: $query");
  
  header('Location: feedback.php#prenota');
  exit();
?>












