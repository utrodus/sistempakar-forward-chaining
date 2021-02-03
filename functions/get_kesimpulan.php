<?php
function getKesimpulan($kodePenyakit)
{
  include "conn.php";
  $query = "SELECT * from tb_kesimpulan WHERE kode_penyakit ='$kodePenyakit'";
  $data = mysqli_query($connect, $query);
  $row = mysqli_fetch_assoc($data);
  return $row;
}
