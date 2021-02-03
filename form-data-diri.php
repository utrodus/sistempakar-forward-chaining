<?php include("header.php") ?>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

    <h1 class="logo mr-auto"><a href="index.php">Sistem Pakar</a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.php" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li><a href="index.php">Kembali Ke Halaman Utama</a></li>
      </ul>
    </nav><!-- .nav-menu -->


  </div>
</header><!-- End Header -->

<div class="mt-5 mb-5">
</div>

<!-- ======= Appointment Section ======= -->
<section id="appointment" class="appointment section-bg mt-5 ">
  <div class="container">

    <div class="section-title">
      <h2>Isi Data Pribadi</h2>
      <p>Silahkan isi Data Pribadi</p>
    </div>
    <div class="col-6 mx-auto">
      <form action="save_datadiri.php" method="post" role="form">
        <div class="form-row">
          <div class="col-12 form-group">
            <input type="text" name="name" class="form-control" id="name" placeholder="Nama Anda" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
            <div class="validate"></div>
          </div>
        </div>

        <div class="form-group">
          <textarea class="form-control" name="alamat" rows="3" placeholder="Alamat Anda" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></textarea>
          <div class="validate"></div>
        </div>

        <div class="text-center"><button type="submit" value="DATA_DIRI" class="btn btn-primary mt-3" style="min-width: 44px; min-height:44px">Konsultasi Sekarang</button></div>
      </form>
    </div>

  </div>
</section><!-- End Appointment Section -->
<?php include("footer.php") ?>