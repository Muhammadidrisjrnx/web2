<?php
include 'koneksi.php';
$question = $_POST['question'];
date_default_timezone_set("Asia/Jakarta");
$created_at = date("Y-m-d H:i:s");
$updated_at = date("Y-m-d H:i:s");
$sql_check = ("SELECT * FROM table_question WHERE pertanyaan='$question'");
$check = mysqli_query($koneksi_db,$sql_check);
if (mysqli_num_rows($check)>0) {
    echo "Gagal di karenakan data sudah ada";
    echo"<meta http-equiv='refresh' content='1;url=management_question.php'>";
}else {
    $sql = ("INSERT INTO table_question(pertanyaan,created_at,updated_at) VALUES('$question','$created_at','$updated_at')");
    $input = mysqli_query($koneksi_db,$sql);
    if ($input) {
        echo "Berhasil Menyimpan Pertanyaan";
        echo"<meta http-equiv='refresh' content='1;url=management_question.php'>";
    }else {
        echo "Gagal Menyimpan Pertanyaan";
        echo"<meta http-equiv='refresh' content='1;url=management_question.php'>";
    }
}

?>
