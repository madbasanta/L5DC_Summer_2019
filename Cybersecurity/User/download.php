<?php

 session_start();                                                                                
include'include/dbconnect.php';
// Downloads files
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // fetch file to download from database
    $sql = "SELECT * FROM files WHERE id=$id";
    $result = mysqli_query($conn, $sql);

    $user = mysqli_fetch_assoc($result);
    $filepath = 'uploads/' . $user['filetype'];

    if (file_exists($filepath)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; file-name=' . basename($filepath));
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize('uploads/' . $user['filetype']));
        readfile('uploads/' . $user['filetype']);

        
       
        exit;
    }
}
?>
