<?php
include 'koneksi.php';

$nama = $_GET['nama'];
$alamat = $_GET['alamat'];
$json['Result'] = array();

$sql_check = ("SELECT * FROM table_user WHERE nama='$nama'");
$check = mysqli_query($koneksi_db,$sql_check);
if (mysqli_num_rows($check)>0) {
    $json['Result']['Sukses']=true;    
}else {
    $json['Result']['Sukses']=false;    
}
echo json_encode($json);
?>