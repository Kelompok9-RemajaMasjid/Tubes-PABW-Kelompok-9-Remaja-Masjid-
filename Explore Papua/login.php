<?php


$namaServer = "localhost";
$namaPengguna = "root";
$password = "";
$db_name = "php2";

$link= mysqli_connect($namaServer,$namaPengguna,$password);
mysqli_select_db($link,$db_name);

if(isset($_POST['email'])){

  $email=$_POST['email'];
  $pass=$_POST['password'];

  $result = mysqli_query($link,"select * from turis where ema='".$email."' And pis='".$pass."' LIMIT 1");

  if(mysqli_num_rows($result)== 1){
    header("Location:ulasan.html");
    exit();
  }
  else{
    echo '<script> alert("Salah Email atau Password")</script>';
  }
} 
 ?>

<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>
    <meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Poppins, sans-serif;
      font-size: 20px;
      color: #eee;
      }
      body {
      background: url("images/5OrtiJa1GH.jpg") no-repeat center;
      background-size: cover;
      }
      h2 {
      text-transform: uppercase;
      font-weight: 400;
      }
      h2 {
      margin: 0 0 0 8px;
      }
      .box {
      padding: 15px;
      border-radius: 5px;
      margin: 20px;
      width: 30%;
      }
      .main-block {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100%;
      padding: 25px;
      background: rgba(0, 0, 0, 0.5); 
      }
      .left-part, form {
      padding: 25px;
      }
      .left-part {
      text-align: center;
      }
      .logo {
      size: 72px;
      }
      form {
      background: rgba(0, 0, 0, 0.5); 
      border-radius: 10px;
      }
      .title {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
      }
      .info {
      display: flex;
      flex-direction: column;
      }
      input{
      padding: 5px;
      margin-bottom: 30px;
      background: transparent;
      border: none;
      border-bottom: 1px solid #eee;
      }
      input::placeholder {
      color: #eee;
      }
      a:hover{
      	color: #6B8E23;
      }
      .tombol{
        background-color: #0098de; 
        padding-left: 10px; 
        padding-right: 10px; 
        padding-top: 10px;
        padding-bottom: 10px; 
        border-radius: 10px;
        width: 100%;
      }
      .tombol:hover {
        background-color: #6B8E23;
      }
      .back{
        font-size: 16px;
        margin-top: 75px;
        float: left;
        color: white;
        background-color: #0098de; 
      font-weight: 700;
      width: 20%; 
      border: 2px solid #244557;
      border-radius: 10px;
      }
      .back:hover {
        background-color: #6B8E23;
      }
      @media (min-width: 568px) {
      html, body {
      height: 100%;
      }
      .main-block {
      flex-direction: row;
      height: calc(100% - 50px);
      }
      .left-part, form {
      flex: 1;
      height: auto;
      }
      }
    </style>
  </head>
  <body>
    <div class="main-block">
      <div class="left-part">
        <image src="images/logo pabw.png" class="logo"></i>
        <h1>Login Explore Papua</h1>
      </div>
      <div class="box">
      <form class="form" name="form_login" method="POST" >
        <div class="title">
          <h2>Login</h2>
        </div>
      <div class="info">
        <input type="email" name="email" id="email" class="email" autocomplete="on" required placeholder="email">
        <input type="password" name="password" id="password" utocomplete="on" required placeholder="password">
      </div>
      <div>
        <input id="submit" class="tombol" type="submit" name="submit" value="Login"/>
      </div>
      <p>Jika belum memiliki akun, klik <a href="form_registrasi.html">daftar</a>.</p>
      </div>
    </form></div>
    </div>
  </body>
  <!--<script type="text/javascript">
  function validasi() {
    if (document.forms["form_login"]["email"].value=="" && document.forms["form_login"]["password"].value=="") {
      alert("Masih ada yang kosong");
      document.forms["form_login"]["email"].focus();
      document.forms["form_login"]["password"].focus();
    }
    window.location.href = tempaterkenal.html;
  }
</script>-->
</html>