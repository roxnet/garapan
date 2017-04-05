<?php
include 'koneksi.php';

$id=$_POST['id'];
$id_data=$_POST['id_data'];

if($id=="provinsi"){
    $sql="select id,nama_kabupaten from kabupaten where id_provinsi='".$id_data."' order by nama_kabupaten asc";
	$res=mysqli_query($kon,$sql);
echo "<select id='kab' onChange='kabupaten()'>";
    while($row=mysqli_fetch_array($res)){
        echo"<option value='$row[id]'>".$row['nama_kabupaten']."</option>";
    }
	echo "</select>";
}
else if($id=="kabupaten"){
    $sql="select id,nama_kecamatan from kecamatan where id_kabupaten='".$id_data."' order by nama_kecamatan asc";
	$res=mysqli_query($kon,$sql);
echo "<select id='kec'>";
    while($row=mysqli_fetch_array($res)){
        echo"<option value='$row[id]'>".$row['nama_kecamatan']."</option>";
    }
	echo "</select>";
}

?>