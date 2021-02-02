<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'db_foward_chaining_gigi';

$connect = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname) or die('koneksi gagal');

if( !$connect ){
  die("Gagal terhubung dengan database: " . mysqli_connect_error());
}
