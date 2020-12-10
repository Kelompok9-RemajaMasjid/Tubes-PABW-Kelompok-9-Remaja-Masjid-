<?php

$namaServer = "localhost";
$namaPengguna = "root";
$password = "";
$db_name = "php2";

$link= mysqli_connect($namaServer,$namaPengguna,$password);
mysqli_select_db($link,$db_name);

if(isset($_POST['submit'])){
  $wisata = mysqli_real_escape_string($link,$_POST['objek_wisata']);
  $ulasan = mysqli_real_escape_string($link,$_POST['ulasan']);

  $sql = "insert into ulasan (objek_wisata, ulasan) values ('$wisata','$ulasan')";
  $result = mysqli_query($link,$sql);

    if($result){
      echo '<script> alert("Berhasil menambahkan ulasan")</script>';
    } else{
      echo "Cek data anda";
    }
  
}

?>

