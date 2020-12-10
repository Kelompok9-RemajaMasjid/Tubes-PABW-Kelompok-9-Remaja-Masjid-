<?php

$namaServer = "localhost";
$namaPengguna = "root";
$password = "";
$db_name = "php2";

$link= mysqli_connect($namaServer,$namaPengguna,$password);
mysqli_select_db($link,$db_name);

if(isset($_POST['kumpul'])){
  $user = mysqli_real_escape_string($link,$_POST['username']);
  $email = mysqli_real_escape_string($link,$_POST['email']);
  $pass1 = mysqli_real_escape_string($link,$_POST['password']);
  $pass2 = mysqli_real_escape_string($link,$_POST['conpassword']);

  if (empty($user) || empty($email) || empty($pass1) || empty($pass2)) {

    echo '<script> alert("Tolong diisi lengkap")</script>';

  }
  if ($pass1 != $pass2) {
  echo '<script> alert("Password yang dimasukan berbeda")</script>';
  } 
  else{
    $sql = "insert into turis (username,ema,pis) values ('$user','$email','$pass1')";
    $result = mysqli_query($link,$sql);

    if($result){
      header('location:login.php');
    }
    else{
      echo "Cek data anda";
    }

  }
}


?>