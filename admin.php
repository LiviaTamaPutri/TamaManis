<?php
    ob_start();
    //cek session
    session_start();

    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {
?>

<!doctype html>
<html lang="en">

<!-- Include Head START -->
<?php include('include/head.php'); ?>
<!-- Include Head END -->

<!-- Body START -->
<body class="bg">

<!-- Header START -->
<header>

<!-- Include Navigation START -->
<?php include('include/menu.php'); ?>
<!-- Include Navigation END -->

</header>
<!-- Header END -->

<!-- Main START -->
<main>

    <!-- container START -->
    <div class="container">

    <?php
        if(isset($_REQUEST['page'])){
            $page = $_REQUEST['page'];
            switch ($page) {
                case 'tsm':
                    include "transaksi_surat_masuk.php";
                    break;
                case 'ctk':
                    include "cetak_disposisi.php";
                    break;
                case 'tsk':
                    include "transaksi_surat_keluar.php";
                    break;
                case 'asm':
                    include "agenda_surat_masuk.php";
                    break;
                case 'ask':
                    include "agenda_surat_keluar.php";
                    break;
                // case 'ref':
                //     include "referensi.php";
                //     break;
                case 'sett':
                    include "pengaturan.php";
                    break;
                case 'pro':
                    include "profil.php";
                    break;
                case 'gsm':
                    include "galeri_sm.php";
                    break;
                case 'gsk':
                    include "galeri_sk.php";
                    break;
            }
        } else {
    ?>
        <!-- Row START -->
        <div class="row">

            <div class="col s12">
                
                    <div class="card-content">
                       <img src ="./asset/img/irrigation.jpg" width="100%" height="330px" style = "margin-top: 20px; object-fit: cover">
                    
                    <?php
                        //cek session
                        if(!empty($_SESSION['admin'])){
                            $query = mysqli_query($config, "SELECT * FROM tbl_instansi");
                            while($data = mysqli_fetch_array($query)){
                                echo '
                                   
                                        <div class="card white black-text">
                                            <div class="card-content">';
                                                if(!empty($data['logo'])){
                                                    echo '<div class="circle left"><img class="logo" src="./upload/'.$data['logo'].'"/></div>';
                                                } else {
                                                    echo '<div class="circle left"><img class="logo" src="./asset/img/logo.png"/></div>';
                                                }

                                                if(!empty($data['nama'])){
                                                    echo '<h5 class="ins">'.$data['nama'].'</h5>';
                                                } else {
                                                    echo '<h5 class="ins">Dinas Pertanian Tanaman Pangan dan Hortikultura Provinsi Kalimantan Barat</h5>';
                                                }

                                                if(!empty($data['alamat'])){
                                                    echo '<p class="almt">'.$data['alamat'].'</p>';
                                                } else {
                                                    echo '<p class="almt">Jl. Alianyang No.17, Sungai Bangkong, Kec. Pontianak Kota, Kota Pontianak, Kalimantan Barat 78113</p>';
                                                }
                                                echo '
                                            </div>
                                        </div>';
                            }
                        } else {
                            header("Location: ../");
                            die();
                        }
                    ?>
                    <div class="card">
                        <div class="card-content">
                            <h5><center>Selamat Datang <?php echo $_SESSION['nama']; ?></center></h5>
                            <p class="description"><center>Anda login sebagai
                            <?php
                                if($_SESSION['admin'] == 1){
                                    echo "<strong>Super Admin</strong>. Anda memiliki akses penuh terhadap sistem.";
                                } elseif($_SESSION['admin'] == 2){
                                    echo "<strong>Administrator</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                                } else {
                                    echo "<strong>Petugas Disposisi</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                                }?></center></p>
                        </div>
                    </div>
                </div>              
            </div>
            <!-- Include Header Instansi START -->
                        <!-- Include Header Instansi END -->

            <!-- Welcome Message START -->
          
            <!-- Welcome Message END -->

            <?php
                //menghitung jumlah surat masuk
                $count1 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_masuk"));

                //menghitung jumlah surat masuk
                $count2 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_keluar"));

                //menghitung jumlah surat masuk
                $count3 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_disposisi"));

                // //menghitung jumlah klasifikasi
                // $count4 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_klasifikasi"));

                //menghitung jumlah pengguna
                $count5 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_user"));
            ?>

            <!-- Info Statistic START -->
            <a href="?page=tsm">
                <div class="col s12 m4">
                    <div class="card cyan">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">mail</i> Jumlah Surat Masuk</span>
                            <?php echo '<h5 class="white-text link">'.$count1.' Surat Masuk</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a>

            <a href="?page=tsk">
                <div class="col s12 m4">
                    <div class="card lime darken-1">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">drafts</i> Jumlah Surat Keluar</span>
                            <?php echo '<h5 class="white-text link">'.$count2.' Surat Keluar</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a>

            <!-- <a href="?page=disp">
                <div class="col s12 m4">
                    <div class="card yellow darken-3">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">description</i> Jumlah Disposisi</span>
                            <?php echo '<h5 class="white-text link">'.$count3.' Disposisi</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a> -->

            <!-- <a href="?page=ref">
                <div class="col s12 m4">
                    <div class="card deep-orange">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">class</i> Jumlah Klasifikasi Surat</span>
                            <?php echo '<h5 class="white-text link">'.$count4.' Klasifikasi Surat</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a> -->

        <?php
            if($_SESSION['id_user'] == 1 || $_SESSION['admin'] == 2){?>
                <a href="?page=sett&sub=usr">
                    <div class="col s12 m4">
                        <div class="card blue accent-2">
                            <div class="card-content">
                                <span class="card-title white-text"><i class="material-icons md-36">people</i> Jumlah Pengguna</span>
                                <?php echo '<h5 class="white-text link">'.$count5.' Pengguna</h5>'; ?>
                            </div>
                        </div>
                    </div>
                </a>
            <!-- Info Statistic START -->
        <?php
            }
        ?>

        </div>
        <!-- Row END -->
    <?php
        }
    ?>
    </div>
    <!-- container END -->

</main>
<!-- Main END -->

<!-- Include Footer START -->
<?php include('include/footer.php'); ?>
<!-- Include Footer END -->

</body>
<!-- Body END -->

</html>

<?php
    }
?>
