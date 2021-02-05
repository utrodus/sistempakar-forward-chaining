<?php

function getQuestion($kode)
{
  include('conn.php');
  $query = "SELECT * from tb_pertanyaan WHERE kode_pertanyaan='$kode'";
  $data = mysqli_query($connect, $query);
  $row = mysqli_fetch_assoc($data);
  return $row;
}
?>