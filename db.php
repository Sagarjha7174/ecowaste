<?php
// Start a session to manage user login state
session_start();

// Database credentials
$DB_HOST = 'sql207.infinityfree.com';
$DB_USER = 'if0_39571487';
$DB_PASS = 'Sumitjha598'; // Default XAMPP password is empty
$DB_NAME = 'if0_39571487_ecowaste_db';

// Create a connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>