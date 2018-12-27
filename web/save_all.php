<?php
include 'koneksi.php';
$id_user = $_POST['id_user'];
$id_question = $_POST['id_question'];
$id_answer = $_POST['id_answer'];

$sql = "INSERT INTO table_all(id_user,id_question,id_answer) VALUES ('$id_user','$id_question','$id_answer')";
$result = mysqli_query($koneksi_db,$sql);
if ($result) {
  echo "Sukses";
}else{
  echo "Failed";
}
?>
