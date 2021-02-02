<?php

session_start();

unset($_SESSION['name']);
unset($_SESSION['email']);
unset($_SESSION['phone']);
unset($_SESSION['alamat']);

header('location:index.php');
