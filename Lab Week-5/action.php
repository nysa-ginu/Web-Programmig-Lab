<?php

try{
    $pdo = new PDO("mysql:host=localhost;dbname=contactus", "root", "");
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
 
// Attempt insert query execution
try{
    // Create prepared statement
    $sql = "INSERT INTO users (Usname, Usemail, Usmob, Uscomm) VALUES (:Usname, :Usemail, :Usmob, :Uscomm)";
    $stmt = $pdo->prepare($sql);
    
    // Bind parameters to statement
    $stmt->bindParam(':Usname', $_REQUEST['name']);
    $stmt->bindParam(':Usemail', $_REQUEST['email']);
    $stmt->bindParam(':Usmob', $_REQUEST['mob']);
    $stmt->bindParam(':Uscomm', $_REQUEST['comment']);
    
    // Execute the prepared statement
    $stmt->execute();
    echo "Records inserted successfully.";
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
 
// Close connection
unset($pdo);
?>