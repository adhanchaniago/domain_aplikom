<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Status Permohonan Domain</h1>

    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            Data pemohon domain
            <strong> <?php echo $this->session->flashdata('flash'); ?> </strong>
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
                            <th>Nama Domain</th>
                            <th>Status</th>
                            <th>Tanggal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <?php $no = 1;
                    foreach ($domain as $d) : ?>
                        <tr>
                            <td> <?php echo $no++; ?> </td>
                            <td> <?php echo $d->nip; ?> </td>
                            <td> <?php echo $d->nama; ?> </td>
                            <td> <?php echo $d->skpd; ?> </td>
                            <td> <?php echo $d->nama_domain; ?> </td>
                            <td> <?php if ($d->status == '1') {
                                        echo "<span class='badge badge-success'>Diterima</span>";
                                    } else {
                                        echo "<span class='badge badge-danger'>Ditolak</span>";
                                    }  ?> </td>

                            <td> <?php echo $d->log; ?> </td>
                            <td>
                                <a href="<?= base_url(); ?>C_detail_domain/detail/<?= $d->id_domain; ?>" class="btn btn-info btn-icon-split btn-sm">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-info-circle"></i>
                                    </span>
                                    <span class="text">Detail</span>
                                </a>

                                <?php if ($d->status == '1') : ?>
                                    <?php if ($d->file_domain == '') : ?>
                                        <a href='#' class='btn btn-warning btn-icon-split btn-sm' data-toggle='modal' data-target='#modalUpload_<?= $d->id_domain; ?>'>
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
<?php if ($domain) : ?>
    <?php foreach ($domain as $d) : ?>
        <div class="modal fade" id="modalUpload_<?= $d->id_domain; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Upload File dan Kirim Pesan ke pemohon</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="<?= base_url(); ?>C_emailsender/send/<?= $d->id_domain; ?>" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <input type="file" id="file" name="file" required>
                            </div>
                            <!-- <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Pesan</span>
                                </div>
                                <textarea class="form-control" aria-label="With textarea" id="pesan" name="pesan" placeholder="Silahkan isikan keterangan tambahan..."> </textarea>
                            </div> -->
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