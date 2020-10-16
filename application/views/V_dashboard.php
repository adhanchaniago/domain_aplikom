  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Permohonan Domain & Aplikom</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

      <!-- Card Jumlah Domain  -->
      <div class="col-xl-6 col-md-12">
        <div class="card border-left-info shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Permohonan Domain</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_domain; ?></div>
              </div>
              <div class="col-auto">
                <li class="nav-item dropdown no-arrow mx-1" style="list-style-type:none;">
                  <a class="nav-link dropdown-toggle" href="#" id="DomainMasuk" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-list-ol fa-2x text-gray-300"></i>
                    <!-- Counter - Alerts -->
                    <?php if ($domain1 > 0) : ?>
                      <span class="badge badge-danger badge-counter">
                        <?php if ($domain1 <= 6) {
                          echo $domain1;
                        } else {
                          echo "6+";
                        }
                        ?>
                      </span>
                    <?php endif; ?>
                  </a>
                  <!-- Dropdown - Alerts -->
                  <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="DomainMasuk">
                    <h6 class="dropdown-header">
                      Domain Masuk
                    </h6>
                    <?php if ($domain_masuk) : ?>
                      <?php
                      $counter = 0;
                      foreach ($domain_masuk as $row) :
                        if ($counter < 6) :
                      ?>
                          <a class="dropdown-item d-flex align-items-center" href="<?= base_url(); ?>C_permohonan_domain/tindakan/<?= $row->id_domain; ?>">
                            <div class="mr-3">
                              <div class="icon-circle bg-info">
                                <i class="fas fa-file-alt text-white"></i>
                              </div>
                            </div>
                            <div>
                              <div class="small text-black-500"><?= $row->log_masuk ?></div>
                              <span class="font-weight-bold">Nama Pemohon : <strong><?= $row->nama ?></strong></span><br>
                              <span class="font-weight-bold">Nama Domain : <strong><?= $row->nama_domain ?></strong></span>
                            </div>
                          </a>
                        <?php
                          $counter++;
                        else : break;
                        ?>
                      <?php
                        endif;
                      endforeach; ?>
                    <?php endif; ?>
                    <a class="dropdown-item text-center small text-black-500" href="<?php echo base_url() . 'C_permohonan_domain' ?>">Lihat Semua Domain Masuk</a>
                  </div>
                </li>

              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card Jumlah Aplikom -->
      <div class="col-xl-6 col-md-12">
        <div class="card border-left-info shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Permohonan Rekomtek Aplikasi</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jumlah_rekomtek_app; ?></div>
              </div>
              <div class="col-auto">
                <li class="nav-item dropdown no-arrow mx-1" style="list-style-type:none;">
                  <a class="nav-link dropdown-toggle" href="#" id="RekomtekMasuk" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-list-ol fa-2x text-gray-300"></i>
                    <!-- Counter - Alerts -->
                    <?php if ($rekomtek_app1 > 0) : ?>
                      <span class="badge badge-danger badge-counter">
                        <?php if ($rekomtek_app1 <= 6) {
                          echo $rekomtek_app1;
                        } else {
                          echo "6+";
                        }
                        ?>
                      </span>
                    <?php endif; ?>
                  </a>
                  <!-- Dropdown - Alerts -->
                  <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="RekomtekMasuk">
                    <h6 class="dropdown-header">
                      Rekomtek Aplikasi Masuk
                    </h6>
                    <?php if ($rekomtek_app_masuk) : ?>
                      <?php
                      $counter1 = 0;
                      foreach ($rekomtek_app_masuk as $row) :
                        if ($counter1 < 6) :
                      ?>
                          <a class="dropdown-item d-flex align-items-center" href="<?= base_url(); ?>C_permohonan_aplikom/tindakan/<?= $row->id_rekomtek; ?>">
                            <div class="mr-3">
                              <div class="icon-circle bg-info">
                                <i class="fas fa-file-alt text-white"></i>
                              </div>
                            </div>
                            <div>
                              <div class="small text-black-500"><?= $row->log_masuk ?></div>
                              <span class="font-weight-bold">Nama Pemohon : <strong><?= $row->nama ?></strong></span><br>
                              <span class="font-weight-bold">Usulan : <strong><?= $row->usulan ?></strong></span>
                            </div>
                          </a>
                        <?php
                          $counter1++;
                        else : break;
                        ?>
                      <?php
                        endif;
                      endforeach; ?>
                    <?php endif; ?>
                    <a class="dropdown-item text-center small text-black-500" href="<?php echo base_url() . 'C_permohonan_aplikom' ?>">Lihat Semua Rekomtek App Masuk</a>
                  </div>
                </li>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Card Domain Diterima -->
      <div class="col-xl-3 col-md-6">
        <div class="card border-left-success shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Domain Diterima</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $domain_diterima; ?></div>
              </div>
              <div class="col-auto">
                <i class="far fa-check-circle fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card Domain Ditolak -->
      <div class="col-xl-3 col-md-6">
        <div class="card border-left-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Domain Ditolak</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $domain_ditolak; ?></div>
              </div>
              <div class="col-auto">
                <i class="far fa-times-circle fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card Rekomtek APP Diterima -->
      <div class="col-xl-3 col-md-6">
        <div class="card border-left-success shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Rekomtek Aplikasi Diterima</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $rekomtek_diterima; ?></div>
              </div>
              <div class="col-auto">
                <i class="far fa-check-circle fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card Rekomtek APP Ditolak -->
      <div class="col-xl-3 col-md-6">
        <div class="card border-left-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Rekomtek Aplikasi Ditolak</div>
                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $rekomtek_ditolak; ?></div>
              </div>
              <div class="col-auto">
                <i class="far fa-times-circle fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row" style="margin-top: 20px">
      <div class="col-xl-7 col-md-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary"><i class="fas fa-chart-bar"></i> &nbsp;Grafik Jumlah Permohonan Masuk Tahun
              <?php
              if (function_exists('date_default_timezone_set')) {
                date_default_timezone_set('Asia/Jakarta');
                $tahun = date("Y");
              }
              echo $tahun;
              ?>

            </h6>
          </div>
          <div class="card-body" style="margin-top: -35px">
            <div class="chart-area">
              <canvas id="chart_jumlah_permohonan_masuk"></canvas>
            </div>
          </div>
        </div>
      </div>

      <!-- CHART DOUGHNUT -->
      <div class="col-xl-5 col-md-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary"><i class="fas fa-chart-pie"></i> &nbsp;Grafik Perbandingan Permohonan Diterima atau Ditolak Tahun <?php
                                                                                                                                                            if (function_exists('date_default_timezone_set')) {
                                                                                                                                                              date_default_timezone_set('Asia/Jakarta');
                                                                                                                                                              $tahun = date("Y");
                                                                                                                                                            }
                                                                                                                                                            echo $tahun;
                                                                                                                                                            ?> <span id="ket1" class="text-dark"></span> <span id="ket2" class="text-dark"></span></h6>
          </div>
          <div class="card-body" style="margin-top: -35px">
            <form method="post">
              <div class="input-group" style="margin-top: 20px;">

                <select class="form-control custom-select bg-light border-1 small col-md-6" name="jenis_permohonan" id="jenis_permohonan" style="margin-top: 10px;">
                  <option>Pilih Jenis Permohonan</option>
                  <option value="1">Domain</option>
                  <option value="2">Rekomtek App</option>
                </select>

                <select class="form-control custom-select bg-light border-1 small col-md-6" name="bulan" id="bulan" onchange="chartTerima_Tolak()" style="margin-top: 10px;">
                  <option>Pilih Bulan</option>
                  <option value="1">Januari</option>
                  <option value="2">Februari</option>
                  <option value="3">Maret</option>
                  <option value="4">April</option>
                  <option value="5">Mei</option>
                  <option value="6">Juni</option>
                  <option value="7">Juli</option>
                  <option value="8">Agustus</option>
                  <option value="9">September</option>
                  <option value="10">Oktober</option>
                  <option value="11">November</option>
                  <option value="12">Desember</option>
                </select>
              </div>
            </form>
            <hr>
            <div class="chart-area" style="margin-top: 10px">
              <canvas id="chart_tolak_terima"></canvas>
              <span id="not_found" style="display: none;"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.container-fluid -->

  </div>
  <!-- End of Main Content -->


  <<!-- script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
    </script> -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <!-- ini untuk Jquery -->
    <script src="<?php echo base_url() . 'vendor/js/jquery.js' ?>"></script>

    <script type="text/javascript">
      Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
      Chart.defaults.global.defaultFontColor = '#858796';

      var ctx = document.getElementById('chart_jumlah_permohonan_masuk').getContext('2d');
      var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',

        // The data for our dataset
        data: {
          labels: ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"],
          datasets: [{
              label: 'Permohonan Domain',
              lineTension: 0.3,
              backgroundColor: "rgba(78, 115, 223, 1)",
              borderColor: "rgba(78, 115, 223, 1)",
              pointRadius: 3,
              pointBackgroundColor: "rgba(78, 115, 223, 1)",
              pointBorderColor: "rgba(78, 115, 223, 1)",
              pointHoverRadius: 3,
              pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
              pointHoverBorderColor: "rgba(78, 115, 223, 1)",
              pointHitRadius: 10,
              pointBorderWidth: 2,
              data: [<?php for ($i = 0; $i < 12; $i++)
                        echo "'" . $jumlah_permohonan_domain_masuk[$i] . "',"

                      ?>]
            },
            {
              label: 'Permohonan Rekomtek Aplikasi',
              lineTension: 0.3,
              backgroundColor: "rgba(22, 123, 156, 1)",
              borderColor: "rgba(22, 123, 156, 1)",
              pointRadius: 3,
              pointBackgroundColor: "rgba(22, 123, 156, 1)",
              pointBorderColor: "rgba(22, 123, 156, 1)",
              pointHoverRadius: 3,
              pointHoverBackgroundColor: "rgba(22, 123, 156, 1)",
              pointHoverBorderColor: "rgba(22, 123, 156, 1)",
              pointHitRadius: 10,
              pointBorderWidth: 2,
              data: [<?php for ($i = 0; $i < 12; $i++)
                        echo "'" . $jumlah_permohonan_rekomtek_masuk[$i] . "',"

                      ?>]
            }
          ]
        },


        // Configuration options go here

        options: {
          maintainAspectRatio: false,
          layout: {
            padding: {
              left: 10,
              right: 25,
              top: 25,
              bottom: 0
            }
          },
          legend: {
            display: true
          },
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: true
              }
            }]
          }
        }
      });
    </script>


    <!-- ini untuk ajax jumlah permohonaan diterima/ ditolak -->
    <script type="text/javascript">
      function chartTerima_Tolak() {
        var jenis_permohonan = document.getElementById('jenis_permohonan').value;
        var bulan = document.getElementById('bulan').value;
        var ket1 = '';
        var ket2 = '';
        if ((jenis_permohonan) && (bulan)) {
          $.ajax({
            url: "<?php echo base_url(); ?>index.php/C_dashboard/get_terima_tolak",
            type: "POST",
            data: {
              "jenis_permohonan": jenis_permohonan,
              "bulan": bulan
            },
            dataType: 'json',
            success: function(data) {
              //console.log(data);
              //console.log(jenis_permohonan);
              //console.log(bulan);
              //untuk keterangan jenis permohonan
              if (jenis_permohonan == '1') {
                ket1 = "Permohonan Domain"
              } else {
                ket1 = "Rekomtek Aplikasi"
              }
              //untuk keterangan bulan
              if (bulan == '1') {
                ket2 = "Januari";
              } else if (bulan == '2') {
                ket2 = "Februari";
              } else if (bulan == '3') {
                ket2 = "Maret";
              } else if (bulan == '4') {
                ket2 = "April";
              } else if (bulan == '5') {
                ket2 = "Mei";
              } else if (bulan == '6') {
                ket2 = "Juni";
              } else if (bulan == '7') {
                ket2 = "Juli";
              } else if (bulan == '8') {
                ket2 = "Agustus";
              } else if (bulan == '9') {
                ket2 = "September";
              } else if (bulan == '10') {
                ket2 = "Oktober";
              } else if (bulan == '11') {
                ket2 = "November";
              } else if (bulan == '12') {
                ket2 = "Desember";
              }
              document.getElementById("ket1").innerHTML = ket1;
              document.getElementById("ket2").innerHTML = "Bulan " + ket2;

              if (data[0] != 0 || data[1] != 0) {
                drawChart(data);
                document.getElementById("chart_tolak_terima").style.display = 'block';
                document.getElementById("not_found").style.display = 'none';
              } else {
                console.log("tidak ditemukan");
                document.getElementById("chart_tolak_terima").style.display = 'none';
                document.getElementById("not_found").innerHTML = "<h1 class='h3 mb-0 text-gray-800'>No Record Found!</h1>";
                document.getElementById("not_found").style.display = 'block';
              }
            },
            error: function(data) {
              console.log('gagal');
              //console.log(jenis_permohonan);
              //console.log(bulan);
              //console.log(data);

            }
          });
        }
      }
    </script>
    <script type="text/javascript">
      function drawChart(chart_data) {
        Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
        Chart.defaults.global.defaultFontColor = '#858796';

        var ctxi = document.getElementById("chart_tolak_terima");
        var myPieChart = new Chart(ctxi, {
          type: 'doughnut',
          data: {
            labels: ["Diterima", "Ditolak"],
            datasets: [{

              data: [chart_data[0], chart_data[1]],
              backgroundColor: ['#3DA81F', '#EC2A17'],
              hoverBackgroundColor: ['#143D09', '#5F0E07'],
              hoverBorderColor: "rgba(234, 236, 244, 1)",
            }],
          },
          options: {
            maintainAspectRatio: false,
            tooltips: {
              backgroundColor: "rgba(0, 0, 0, 0.8)",
              bodyFontColor: "#FFFFFF",
              borderColor: 'rgb(0, 0, 0)',
              borderWidth: 1,
              xPadding: 15,
              yPadding: 15,
              displayColors: false,
              caretPadding: 10,
            },
            legend: {
              display: true
            },
            cutoutPercentage: 70,
          },
        });
      }
    </script>