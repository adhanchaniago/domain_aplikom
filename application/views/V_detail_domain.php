 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mb-4 text-gray-800">Detail Data Pemohon</h1>
     <table class="table table-striped">
         <!-- <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead> -->
         <tbody>
             <?php foreach ($detail as $d) : ?>
                 <tr>
                     <th scope="row">NIP</th>
                     <td> <?php echo $d['nip']; ?> </td>
                 </tr>
                 <tr>
                     <th scope="row">Nama Lengkap</th>
                     <td><?php echo $d['nama']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">SKPD</th>
                     <td><?php echo $d['skpd']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Nama Domain</th>
                     <td><?php echo $d['nama_domain']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Email</th>
                     <td><?php echo $d['email']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Tanggal</th>
                     <td><?php echo $d['log']; ?></td>
                 </tr>
                 <tr>
                     <th scope="row">Dokumen</th>
                     <td><a href="<?= base_url(); ?>uploads/file/<?php echo $d['filename']; ?>"> <i class="far fa-file"></i> &nbsp;<?php echo $d['filename']; ?></a></td>
                 </tr>
                 <tr>
                     <th scope="row">Status</th>
                     <td> <?php if ($d['status'] == '1') {
                                echo "<span class='badge badge-success'>Diterima</span>";
                            } else {
                                echo "<span class='badge badge-danger'>Ditolak</span>";
                            }  ?>
                     </td>
                 </tr>
             <?php endforeach; ?>
         </tbody>
     </table>
     <a href="<?php echo base_url() . 'C_list_domain' ?>" class="btn btn-primary btn-icon-split float-right">
         <span class="icon text-white-50">
             <i class="fas fa-backspace"></i>
         </span>
         <span class="text">Kembali</span>
     </a>
 </div>
 </div>
 <!-- /.container-fluid -->