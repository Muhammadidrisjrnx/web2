<?php
include 'koneksi.php';
$id = $_GET['id_question'];
$sql = "DELETE FROM table_question WHERE id_question='$id'";
$result = mysqli_query($koneksi_db,$sql);
echo "Berhasil Menghapus Pertanyaan";
echo"<meta http-equiv='refresh' content='1;url=management_question.php'>";
?>
