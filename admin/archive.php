<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Archive | GSO</title>

  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet"><!-- Google Font: Montserrat -->
  <link rel="stylesheet" href="../assets/plugins/fontawesome-free/css/all.min.css">  <!-- Font Awesome -->
  <link rel="stylesheet" href="../assets/dist/css/adminlte.min.css">  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"><!-- DataTables -->
  <link rel="stylesheet" href="../assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css"><!-- DataTables -->
  <link rel="stylesheet" href="../assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
</head>

<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">

<div class="wrapper"><!-- Site wrapper -->

  
  <?php include('../include/navbar.php')?><!-- Navbar -->


  <?php include('../include/sidebar.php')?><!--Sidebar-->



  
  <div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
   
    <section class="content-header"> <!-- Content Header (Page header) -->
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Archive Folder</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Archive folder</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->

    <div class="card"> <!-- Default box -->
        <div class="card-header">
          <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; List of archive items</h3>
        </div>
        <div class="card-body">
        <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                  <th>ID</th>
                    <th>ITEM</th>    
                    <th>DESCRIPTION</th>
                    <th>P.A.R NUMBER</th>
                    <th>UNIT VALUE</th>
                    <th>DATE</th>
                    <th>QTY</th>        
                    <th>ACCOUNT CODE</th>
                    <th>SUPPLIER</th>
                    <th>ACTION</th>
                  </tr>
                  </thead>
                  <tbody>
    <?php
    $query = "SELECT * FROM archive";
    $results = mysqli_query($conn, $query);
    $cnt = 1;
    if(mysqli_num_rows($results)){
      foreach($results as $row ){?>

  <tr>
    <td><?php echo htmlentities($cnt); ?></td>
    <td><?=$row['item']?></td>
    <td><?=$row['description']?></td>
    <td><?=$row['par_number']?></td>
    <td><?=$row['unit_value']?></td>
    <td><?=$row['date_aquired']?></td>
    <td><?=$row['quantity']?></td>
    <td><?=$row['account_code']?></td>
    <td><?=$row['supplier']?></td>
    <td>
        <button type="submit" value="<?= $result['']; ?>" class=" btn btn-sm btn-success" data-toggle="modal" data-target="#editDeptModal"><i class="fas fa-undo" data-toggle="popover" data-content="Undo" data-trigger="hover"></i></button>
        <button type="submit" value="<?= $result['']; ?>" class=" btn btn-sm btn-danger"><i class="fas fa-trash" data-toggle="popover" data-content="Trash" data-trigger="hover"></i></button>
    </td>
  </tr>

      <?php $cnt++; }}?>

                  </tbody>
                  <tfoot>
                  <tr>
                  <th>ID</th>
                    <th>ITEM</th>    
                    <th>DESCRIPTION</th>
                    <th>P.A.R NUMBER</th>
                    <th>UNIT VALUE</th>
                    <th>DATE</th>
                    <th>QTY</th>
                    <th>ACCOUNT CODE</th>
                    <th>SUPPLIER</th>
                    <th>ACTION</th>
                  </tr>
                  </tfoot>
                </table>

        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section><!-- /.content -->
    
  </div><!-- /.content-wrapper -->
  
  <?php include('../include/footer.php') ?><!--footer-->

</div><!-- ./wrapper -->



<script src="../assets/plugins/jquery/jquery.min.js"></script><!-- jQuery -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script><!-- Bootstrap 4 -->
<script src="../assets/dist/js/adminlte.min.js"></script><!-- Custom App -->
<script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script><!-- DataTables  & Plugins -->
<script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../assets/plugins/jquery-validation/jquery.validate.min.js"></script><!-- jquery-validation -->
<script src="../assets/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="../assets/plugins/popper/popper.min.js"></script>
<script src="../assets/plugins/sweetalert2/sweetalert2.min.js"></script>
 
<script>
$(function(){ 
    $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false
      })//Page specific script
      $('[data-toggle="popover"]').popover()
});
</script>