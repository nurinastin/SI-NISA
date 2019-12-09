<?php 
include "koneksi.php"; 
$nama=$_POST['nama']; 
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat']; 
$usia=$_POST['usia']; 
$query=mysql_query("insert into tabel_biodata(nama, jenis_kelamin,alamat, usia) value('$nama','$jenis_kelamin','$alamat','$usia')"); 
if($query){ 
 echo "Berhasil input data ke database "; 
 ?><a href="tabel.php">Lihat data di Tabel</a><?php
}else{ 
 echo "Gagal input data"; 	
 echo mysql_error(); 
} 
?>