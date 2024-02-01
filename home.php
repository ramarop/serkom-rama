<!doctype html> 
<html lang="en"> 
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>Data Mahasiswa</title> 
<link 
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384
T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M
 2HN" crossorigin="anonymous"> 
</head> 
<body> 
<div class="container"> 
<h2>Data Peserta</h2> 
<a href="tambah.php"> <button type="button" class="btn btn-primary">Tambah Data</button></a> 
<a href="home1.php"> <button type="button" class="btn btn-primary">sertifikasi</button></a> 
<br/><br/> 
<form action="home.php" method="get"> 
<label>Cari :</label> 
<input type="text" name="cari"> 
<input type="submit" value="cari"> 
</form> 
<!--Letak Form Pencarian--> 
<?php  
if(isset($_GET['cari'])){ 
$cari = $_GET['cari']; 
echo "<b>Hasil pencarian : ".$cari."</b>"; 
} 
?> 
<table class="table"> 
<thead> 
<tr> 
<th scope="col">No</th> 
<th scope="col">Kd_Skema</th> 
<th scope="col">Nm_Peserta</th> 
<th scope="col">Jenis kelamin</th> 
<th scope="col">Alamat</th> 
<th scope="col">No Hp</th> 
<th scope="col">action</th> 
</tr> 
</thead> 
<!--Letak Proses Pencarian--> 
<?php  
include 'koneksi.php'; 
$no=1; 
if(isset($_GET['cari'])){ 
$cari = $_GET['cari']; 
$sql = mysqli_query($coon, "select * from tb_peserta where nm_peserta like 
'%".$cari."%'"); 
}else{ 
$sql = mysqli_query($coon,"select * from tb_peserta");   
} 
while($data=mysqli_fetch_array($sql)){ 
?> 
<tbody> 
<tr> 
<th scope="row"><?php echo $no; ?></th> 
<td><?php echo $data['kd_skema']; ?></td> 
<td><?php echo $data['nm_peserta']; ?></td> 
<td><?php echo $data['jekel']; ?></td> 
<td><?php echo $data['alamat']; ?></td> 
<td><?php echo $data['no_hp']; ?></td> 
<td> 
<a href="edit.php?id=<?php echo $data['id_peserta']; ?>"><button type="button" 
class="btn btn-warning">Edit</button>  
<a href="delete.php?id=<?php echo $data['id_peserta'] ?>"><button type="button" 
class="btn btn-danger">Hapus</button>   
</td> 
</tr> 
<?php  
$no++; 
} 
?>    
</tbody> 
</table> 
</div> 
<script 
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384
C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46c
 DfL" crossorigin="anonymous"></script> 
</body> 
</html>