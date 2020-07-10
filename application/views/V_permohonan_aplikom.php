<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Data Permohonan Aplikom</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>SKPD</th>
                            <th>Usulan</th>
                            <th>Tanggal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>123</td>
                            <td>Jamest</td>
                            <td>4.0</td>
                            <td>Sikunang Tanah</td>
                            <td>2011/04/25</td>
                            <td>
                                <a href="<?php echo base_url() . 'C_tindakan_aplikom' ?>" class="btn btn-info btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Tindakan</span>
                                </a>

                                <a href="" class="btn btn-danger btn-icon-split btn-sm" data-toggle="modal" data-target="#modalHapus">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-trash"></i>
                                    </span>
                                    <span class="text">Hapus</span>
                                </a>
                            </td>

                        </tr>
                        <tr>
                            <td>456</td>
                            <td>Sward</td>
                            <td>3.0</td>
                            <td>Bibit Online</td>
                            <td>2011/05/25</td>
                            <td>

                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
</div>
<!-- /.container-fluid -->

<!--Modal Hapus-->
<div class="modal fade" id="modalHapus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Hapus?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Anda yakin ingin menghapus ini ?</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger" href="#">Hapus</a>
            </div>
        </div>
    </div>
</div>