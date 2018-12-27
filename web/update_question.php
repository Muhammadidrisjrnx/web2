<?php
include 'koneksi.php';
$id = $_GET['id_question'];
$question_update = $_GET['question'];
$sql ="UPDATE table_question SET pertanyaan='$question_update' WHERE id_question='$id'";
$result = mysqli_query($koneksi_db,$sql);
echo "Berhasil Mengedit Pertanyaan";
echo"<meta http-equiv='refresh' content='1;url=management_question.php'>";

?>
