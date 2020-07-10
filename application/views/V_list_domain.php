<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Status Permohonan Domain</h1>

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
                            <th>Nama Domain</th>
                            <th>Status</th>
                            <th>Tanggal Ditolak / Diterima</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>123</td>
                            <td>Jamest</td>
                            <td>4.0</td>
                            <td>jateng.go.id</td>
                            <th>
                                <span class="badge badge-success">Diterima</span>
                            </th>
                            <td>2011/04/25</td>
                            <td>
                                <a href="<?php echo base_url() . 'C_detail_domain' ?>" class="btn btn-info btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Detail</span>
                                </a>

                                <a href="" class="btn btn-warning btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-paperclip"></i>
                                    </span>
                                    <span class="text">Upload File</span>
                                </a>
                            </td>

                        </tr>
                        <tr>
                            <td>456</td>
                            <td>Sward</td>
                            <td>3.0</td>
                            <td>undip.ac.id</td>
                            <th>
                                <span class="badge badge-danger">Ditolak</span>
                            </th>
                            <td>2011/05/25</td>
                            <td>
                                <!-- <a href="detail_domain.html" class="btn btn-info btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Detail</span>
                                </a> -->

                                <!-- <a href="" class="btn btn-danger btn-icon-split btn-sm" data-toggle="modal"
                data-target="#modalHapus">
                <span class="icon text-white-50">
                  <i class="fas fa-trash"></i>
                </span>
                <span class="text">Upload File</span>
              </a> -->
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