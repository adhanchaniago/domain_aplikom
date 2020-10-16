<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Detail Data Pemohon</h1>
    <table class="table table-striped table-sm">

        <tbody>
             <?php foreach ($detail as $d) : ?>
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
                     <th scope="row">Tanggal Masuk</th>
                     <td colspan="2"><?php echo $d['log_masuk']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">
                        Tanggal <?php if ($d['status'] == '1') {
                            echo "Diterima";
                        } else{
                            echo "Ditolak";
                        } ?>
                     </th>
                     <td colspan="2">
                        <?php if ($d['status'] == '1') {
                            echo $d['log_terima'];
                        } else{
                            echo $d['log_tolak'];
                        } ?>
                         
                     </td>
                 </tr>
                 <tr>
                     <th scope="row">Dokumen</th>
                     <td colspan="2"><a href="<?= base_url(); ?>uploads/file/<?php echo $d['filename']; ?>"> <i class="far fa-file"></i> &nbsp;<?php echo $d['filename']; ?></a></td>
                 </tr>
                 <tr>
                     <th scope="row">Status</th>
                     <td colspan="2"> <?php if ($d['status'] == '1') {
                                echo "<span class='badge badge-success'>Diterima</span>";
                            } else {
                                echo "<span class='badge badge-danger'>Ditolak</span>";
                            }  ?>
                     </td>
                 </tr>
             <?php endforeach; ?>
         </tbody>
    </table>
    <a href="<?php echo base_url() . 'C_list_aplikom' ?>" class="btn btn-primary btn-icon-split float-right">
        <span class="icon text-white-50">
            <i class="fas fa-backspace"></i>
        </span>
        <span class="text">Kembali</span>
    </a>

</div>
</div>
<!-- /.container-fluid -->