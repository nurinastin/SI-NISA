<?php 
include "koneksi.php"; 
$id=$_POST['id']; 
$nama=$_POST['nama']; 
$jenis_kelamin=$_POST['jenis_kelamin']; 
$alamat=$_POST['alamat']; 
$usia=$_POST['usia']; 
$query=mysql_query("update tabel_biodata set nama='$nama',jenis_kelamin='$jenis_kelamin',alamat='$alamat', usia='$usia' where id='$id'"); 
if($query){ 
 echo "Berhasil update data ke database "; 
 ?><a href="tabel.php">Lihat data di Tabel</a><?php
}else{ 
 echo "Gagal update data"; 
 echo mysql_error(); 
} 
?>