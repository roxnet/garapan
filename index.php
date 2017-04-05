<?php
	include_once "koneksi.php";
?>
<!DOCTYPE html>
<html>
  <head>
	  <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	
	function provinsi(){
		var provinsi=$('#prov').val();
			$.ajax({
				url	     : 'http://localhost/garapan/load.php',
				type     : 'POST',
				dataType : 'HTML',
				data     : 'id=provinsi&id_data='+provinsi,
				success  : function(respons){
					$('#kabupaten').html(respons);
					
				},
			});
	}
		function kabupaten(){
			var kabupaten=$('#kab').val();
			$.ajax({
				url	     : 'http://localhost/garapan/load.php',
				type     : 'POST',
				dataType : 'HTML',
				data     : 'id=kabupaten&id_data='+kabupaten,
				success  : function(respons){
					$('#kecamatan').html(respons);
					
				},
			});
	}
	
	</script>
</head>
<body>
      <table>
		<tr>
			<td>PROVINSI</td>
			<td><select id="prov" onChange='provinsi()'>
				<option>-PILIH PROVINSI-</option>
				<?php
					$query=mysqli_query($kon,"select * from provinsi");
					while($hasil=mysqli_fetch_array($query)){
						echo "
							<option  id='prov' value='$hasil[id]'>$hasil[nama_provinsi]</option>
						";
					}
				?>
			</select></td>
		</tr>
		<tr>
			<td>KABUPATEN</td>
			<td><div id='kabupaten'><select>
				<option>-PILIH KABUPATEN-</option>
			</select></div></td>
		</tr>
		<tr>
			<td>KECAMATAN</td>
			<td><div id='kecamatan'><select>
				<option>-PILIH KECAMATAN-</option>
				
			</select></div></td>
		</tr>
		
      </table>
</body>
</html>