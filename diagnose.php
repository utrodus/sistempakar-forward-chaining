<?php include("header.php") ?>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
  <div class="container d-flex ">

    <h1 class="logo mr-auto"><a href="index.php">Sistem Pakar</a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.php" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li><a href="reset_datadiri.php">Kembali Ke Halaman Utama</a></li>
      </ul>
    </nav><!-- .nav-menu -->


  </div>
</header><!-- End Header -->



<div class="mt-5 mb-5">
</div>


<main>
  <!-- ======= Services Section ======= -->
  <section id="services" class="services ">
    <div class="container">

      <div class="section-title mt-4">
        <?php
        include "functions/get_question.php";
        $kode = 'GD01&GD02';
        if (isset($_GET['kode'])) {
          $kode = $_GET['kode'];
        }
        $rowQuestion = getQuestion($kode);
        ?>

        <?php if ($rowQuestion['last_rule'] != 'yes') : ?>
          <?php
          session_start();
          echo "<h4>Halo, " . $_SESSION['name'] . "</h4>";
          ?>
          <h2>Pertanyaan Diagnosis</h2>
          <h5><?php echo $rowQuestion['isi_pertanyaan'] ?></h5>
          <div class="row justify-content-center mt-4">
            <a href="diagnose.php?kode=<?php echo $rowQuestion['ifyes'] . '"' ?>" style="min-width: 44px; min-height:44px; width:10%;" class="btn btn-outline-success mr-2">
              Iya
            </a>
            <a href="diagnose.php?kode=<?php echo $rowQuestion['ifno'] . '"' ?>" style="min-width: 44px; min-height:44px; width:10%;" class="btn btn-outline-secondary ml-2" href="#" role="button">
              Tidak
            </a>
          </div>
        <?php endif; ?>

        <?php if ($rowQuestion['last_rule'] == 'yes') : ?>
          <h3 class="text-left mb-4">Kesimpulan Diagnosa</h3>
          <?php
          include "functions/get_kesimpulan.php";
          session_start();
          $kodePenyakit = $rowQuestion['ifyes'];
          $kesimpulan = getKesimpulan($kodePenyakit);
          $dataGejala = $kesimpulan['fakta'];
          $gejala = str_replace("\\n", "\n", $dataGejala);
          $dataSolusi = $kesimpulan['solusi'];
          $solusi = str_replace("\\n", "\n", $dataSolusi);
          echo "<p class='text-left'>Nama : " . $_SESSION['name'] . "</p>";
          echo "<p class='text-left'>Alamat : " . $_SESSION['alamat'] . "</p>";

          ?>
          <p class="my-4 text-left font-weight-bold">Nama Penyakit : <?php echo $kesimpulan['nama_penyakit'] ?></p>
          <br>
          <b>
            <p class="mb-2 text-left">Gejala yang anda rasakan : </p>
          </b>
          <?php echo "<pre class='mt-3 mb-0 text-left'>" . nl2br($gejala) . "</pre>" ?>
          <b>
            <p class="mb-2 mt-4 text-left">Solusi Untuk Anda : </p>
          </b>
          <?php echo "<pre class='mt-3 mb-0 text-left'>" . nl2br($solusi) . "</pre>" ?>
        <?php endif; ?>

      </div>
  </section><!-- End Services Section -->
</main>

<?php include("footer.php") ?>