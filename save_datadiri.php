<?php

session_start();

$nama = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$alamat = $_POST['alamat'];

$_SESSION['name'] = $nama;
$_SESSION['email'] = $email;
$_SESSION['phone'] = $phone;
$_SESSION['alamat'] = $alamat;

header('location:diagnose.php');
