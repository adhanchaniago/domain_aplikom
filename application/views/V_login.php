<body class="bg-gradient-secondary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-lg-10">

                <div class="card o-hidden border-0 shadow-lg my-5 mx-auto">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Selamat Datang !</h1>
                                    </div>
                                    <?php if ($this->session->flashdata('gagal_login')) : ?>
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            NIP / Password salah !
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <?php endif; ?>

                                    <form class="user" method="POST" action="<?= base_url('C_auth/'); ?>">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-user" id="nip" placeholder="Masukan NIP..." name="nip" autocomplete="false" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="password" placeholder="Masukan Password..." name="password" required>
                                        </div>
                                        <div class="form-group">
                                        </div>
                                        <hr>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </button>
                                    </form>
                                    <hr>
                                    <!-- <div class="text-center">
                                        <a class="small" href="<?php echo base_url() . 'C_auth/register' ?>">Belum punya akun? Register!</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo base_url() . 'vendor/vendor/jquery/jquery.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'vendor/vendor/bootstrap/js/bootstrap.bundle.min.js' ?>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?php echo base_url() . 'vendor/vendor/jquery-easing/jquery.easing.min.js' ?>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?php echo base_url() . 'vendor/js/sb-admin-2.min.js' ?>"></script>

</body>

</html>