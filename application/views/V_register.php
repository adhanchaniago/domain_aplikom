<body class="bg-gradient-success">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5 col-lg-6 mx-auto">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <!-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
                    <div class="col-lg">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Silahkan Register!</h1>
                            </div>
                            <form class="user">
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id="nip" name="nip" placeholder="NIP">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="nama" name="nama" placeholder="Nama Lengkap">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="email" name="email" placeholder="Alamat Email">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Ulangi Password">
                                    </div>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                    Register Akun
                                </button>

                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="<?php echo base_url() . 'C_auth' ?>">Sudah punya akun? Login!</a>
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