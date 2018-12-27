<?php
include 'koneksi.php';
$treatment = $_POST['treatment'];
date_default_timezone_set("Asia/Jakarta");
$created_at = date("Y-m-d H:i:s");
$updated_at = date("Y-m-d H:i:s");
$sql_check = ("SELECT * FROM table_treatment WHERE treatment='$treatment'");
$check = mysqli_query($koneksi_db,$sql_check);
if (mysqli_num_rows($check)>0) {
    echo "Gagal di karenakan data sudah ada";
    echo"<meta http-equiv='refresh' content='1;url=management_treatment.php'>";
}else {
    $sql = ("INSERT INTO table_treatment(treatment,created_at,updated_at) VALUES('$treatment','$created_at','$updated_at')");
    $input = mysqli_query($koneksi_db,$sql);
    if ($input) {
        echo "Berhasil Menyimpan Treatment";
        echo"<meta http-equiv='refresh' content='1;url=management_treatment.php'>";
    }else {
        echo "Gagal Menyimpan Treatment";
        echo"<meta http-equiv='refresh' content='1;url=management_treatment.php'>";
    }
}

?>
