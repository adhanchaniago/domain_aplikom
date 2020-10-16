<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Detail Data Pemohon</h1>
    <table class="table table-striped table-sm">
        <!-- <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead> -->
        <tbody>
             <?php foreach ($detail as $d) :

                $this->session->set_userdata('usulan', $d['usulan']);
             $this->session->set_userdata('file_name', $d['filename']); ?>
                 <tr>
                     <th scope="row">NIP</th>
                     <td colspan="2"> <?php echo $d['nip']; ?> </td>
                 </tr>
                 <tr>
                     <th scope="row">Nama Lengkap</th>
                     <td colspan="2"><?php echo $d['nama']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Kode SKPD</th>
                     <td colspan="2"><?php echo $d['skpd']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Nama SKPD</th>
                     <td colspan="2"><?php echo $d['nama_skpd']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Usulan Aplikasi</th>
                     <td colspan="2"><?php echo $d['usulan']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Email</th>
                     <td colspan="2"><?php echo $d['email']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Biaya</th>
                     <td>Rp<?= $rupiah; ?>
                     </td>
                     <td style="text-align: center;">Terbilang : <i><?= $terbilang; ?> Rupiah</i></span>
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">Tanggal</th>
                     <td colspan="2"><?php echo $d['log_masuk']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Dokumen</th>
                     <td colspan="2"><a href="<?= base_url(); ?>uploads/file/<?php echo $d['filename']; ?>"> <i class="far fa-file"></i> &nbsp;<?php echo $d['filename']; ?></a></td>
                 </tr>
         </tbody>
    </table>
    <a href="<?= base_url(); ?>C_permohonan_aplikom/tolak/<?= $d['id_rekomtek']; ?>" class="btn btn-danger btn-icon-split btn-sm float-right">
        <span class="icon text-white-50">
            <i class="fas fa-times"></i>
        </span>
        <span class="text">Tolak</span>
    </a>
    &nbsp;
    <a href="<?= base_url(); ?>C_permohonan_aplikom/terima/<?= $d['id_rekomtek']; ?>" class="btn btn-success btn-icon-split btn-sm float-right" style="margin-right: 10px;">
        <span class="icon text-white-50">
            <i class="fas fa-check"></i>
        </span>
        <span class="text">Terima</span>
    </a>
<?php endforeach; ?>
</div>
</div>
<!-- /.container-fluid -->