<html> 
<head>
<title>Form</title>
</html>
</head> 
<body> 
 <form action="proses.php" method="post"> 
  <table> 
  <tr> 
   <td>Nama</td> 
   <td><input type="text" name="nama" size="20"></td> 
  </tr> 
<tr>
		<td>Jenis Kelamin</td>
		<td><input type="radio" name="jenis_kelamin" value="Laki-laki" <?php if($baris['jenis_kelamin']=="Laki-laki"){ echo "checked";}?> > Laki-laki &nbsp;&nbsp;
		<input type="radio" name="jenis_kelamin" value="Perempuan" <?php if($baris['jenis_kelamin']=="Perempuan"){ echo "checked";}?> >Perempuan</td>
		</tr>
  <tr> 
   <td>Alamat</td> 
   <td><textarea cols="20" rows="5" name="alamat"></textarea></td> 
  </tr> 
  <tr> 
   <td>Usia</td> 
   <td><input type="text" name="usia" size="20"></td> 
  </tr> 
  <tr> 
   <td><input type="submit" name="proses" value="Proses"></td> 
   <td><input type="reset" value="Batal"></td> 
  </tr> 
  </table> 
 </form> 
</body> 
</html>