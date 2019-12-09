<?php 
include "koneksi.php"; 
$id=$_GET['id']; 
$query=mysql_query("select * from tabel_biodata where id='$id'"); 
?> 
<form action="simpan.php" method="post"> 
<table border="1"> 
<?php 
while($row=mysql_fetch_array($query)){ 
 ?> 
 <input type="hidden" name="id" value="<?php echo $id;?>"/> 
 <tr> 
 <td>Nama</td><td><input type="text" name="nama" value="<?php echo $row['nama'];?>" /></td> 
<tr>
		<td>Jenis Kelamin</td>
		<td><input type="radio" name="jenis_kelamin" value="Laki-laki" <?php if($baris['jenis_kelamin']=="Laki-laki"){ echo "checked";}?> > Laki-laki &nbsp;&nbsp;
		<input type="radio" name="jenis_kelamin" value="Perempuan" <?php if($baris['jenis_kelamin']=="Perempuan"){ echo "checked";}?> >Perempuan</td>
		</tr>
 </tr> 
 <tr> 
 <td>Alamat</td> 
<td><textarea cols="20" rows="5" name="alamat"><?php echo $row['alamat'];?></textarea></td> 
 </tr> 
 <tr><td>Usia</td><td><input type="text" name="usia" value="<?php echo $row['usia'];?>" /></td> 
 </tr> 
 <tr><td><input type="submit" value="Simpan" name="simpan" /></td> 
 </tr> 
 <?php 
} 
?> 
</table> 
</form>