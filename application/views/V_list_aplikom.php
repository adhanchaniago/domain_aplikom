<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Status Permohonan Rekomtek Aplikasi</h1>

    <?php if (($this->session->flashdata('email')) && ($this->session->flashdata('usulan'))) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            File usulan Rekomtek Aplikasi <strong> <?php echo $this->session->flashdata('usulan'); ?> </strong>  berhasil dikirim ke
            <strong> <?php echo $this->session->flashdata('email'); ?> </strong> !
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif; ?>
    <?php if ($this->session->flashdata('terima')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            Data usulan 
            <strong> <?php echo $this->session->flashdata('terima'); ?> </strong> Diterima !
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif; ?>

    <?php if ($this->session->flashdata('tolak')) : ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Data usulan 
            <strong> <?php echo $this->session->flashdata('tolak'); ?> </strong> Ditolak !
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif; ?>

    <?php if ($this->session->flashdata('gagal_upload_file')) : ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Upload file gagal !
            <strong> <?php echo $this->session->flashdata('gagal_upload_file'); ?> </strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif; ?>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>SKPD</th>
                            <th>Usulan</th>
                            <th>Status</th>
                            <th>Tanggal Ditolak / Diterima</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php $no = 1;
                    foreach ($rekomtek_app as $d) : ?>
                        <tr>
                            <td> <?php echo $no++; ?> </td>
                            <td> <?php echo $d->nip; ?> </td>
                            <td> <?php echo $d->nama; ?> </td>
                            <td> <?php echo $d->nama_skpd; ?> </td>
                            <td> <?php echo $d->usulan; ?> </td>
                            <td> 
                                <?php if ($d->status == '1') {
                                        echo "<span class='badge badge-success'>Diterima</span>";
                                    } else {
                                        echo "<span class='badge badge-danger'>Ditolak</span>";
                                    }  ?> 
                            </td>

                            <td> 
                                <?php if ($d->status == '1') {
                                        $tanggal = explode(" ", $d->log_terima) ;
                                        echo $tanggal[0];
                                    } else {
                                        $tanggal = explode(" ", $d->log_tolak) ;
                                        echo $tanggal[0];
                                    }  ?> 
                            </td>
                            <td>
                                <a href="<?= base_url(); ?>C_list_aplikom/detail/<?= $d->id_rekomtek; ?>" class="btn btn-info btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Detail</span>
                                </a>

                                <?php if ($d->status == '1') : ?>
                                    <?php if ($d->file_rekomtek_app == '') : ?>
                                        <a href='#' class='btn btn-warning btn-icon-split btn-sm' data-toggle='modal' data-target='#modalUpload_rekomtek<?= $d->id_rekomtek; ?>'>
                                            <span class='icon text-white-50'>
                                                <i class='fas fa-paperclip'></i>
                                            </span>
                                            <span class='text'>Upload</span>
                                        </a>
                                    <?php else : ?>
                                        <span class='badge badge-success ban'><i class="fas fa-clipboard-check"></i> File terkirim</span>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
</div>
<!-- /.container-fluid -->

<!-- Modal -->
<?php if ($rekomtek_app) : ?>
    <?php foreach ($rekomtek_app as $d) :
        $this->session->set_userdata('email', $d->email);
        $this->session->set_userdata('usulan', $d->usulan);
         ?>
        <div class="modal fade" id="modalUpload_rekomtek<?= $d->id_rekomtek; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Upload File dan Kirim Pesan ke pemohon</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="<?= base_url(); ?>C_list_aplikom/send/<?= $d->id_rekomtek; ?>" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <input type="file" id="file" name="file" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            <button type="submit" class="btn btn-primary">Kirim</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>