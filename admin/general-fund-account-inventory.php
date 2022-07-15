<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>General Fund Account Code | GSO</title>

  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet"><!-- Google Font: Montserrat -->
  <link rel="stylesheet" href="../assets/plugins/fontawesome-free/css/all.min.css">  <!-- Font Awesome -->
  <link rel="stylesheet" href="../assets/dist/css/adminlte.min.css">  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"><!-- DataTables -->
  <link rel="stylesheet" href="../assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <link rel="stylesheet" href="../assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
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
            <h1>Account Inventory</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Account Code</a></li>
              <li class="breadcrumb-item active">Account Inventory</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->

     
      <div class="card"> <!-- Default box -->
        <div class="card-header">
          <?php
          $aid = intval($_GET['acct']);
          $sql = "SELECT * FROM account_code  
          WHERE id = '$aid' LIMIT 1 ";
          $query = mysqli_query($conn, $sql);
          if(mysqli_num_rows($query)>0){
            foreach($query as $result){?>
                <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; <?=$result['account_name']?>&nbsp;<?=$result['account_code']?></h3>
            <?php }}?>  
        </div>





        <div class="modal fade" id="viewInModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Property Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            
            <div class="invoice p-3 mb-3">

            </div>

            </div>
          </div>
        </div>
      </div>




    <div class="modal fade" id="editInModal" data-backdrop="static" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Update Property Information</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form method="POST" id="inventory_update" enctype="multipart/form-data">
      <div class="form-row">
        <input type="hidden" id="InvId" name="InvId" >
        <div class="form-group col-md-6">
          <label >P.A.R Number</label>
          <input type="text" class="form-control" id="par" name="par" readonly>
        </div>
    <div class="form-group col-md-6">
      <label >Date Aquired</label>
      <input type="text" class="form-control" id="date" name="date">
    </div>
  </div>
  <div class="form-row">
  <div class="form-group col-md-6">
    <label >Item</label>
    <input type="text" class="form-control" id="Item" name="item">
  </div>
  <div class="form-group col-md-6">
      <label >Unit Value</label>
      <input type="text" class="form-control" id="uvalue" name="uvalue">
    </div>
  </div>
  <div class="form-group">
    <label >Description</label>
    <textarea class="form-control" id="description" name="description" rows="4"></textarea>
  </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >End User</label>
      <input type="text" class="form-control" id="enduser" name="enduser" readonly>
    </div>
    <div class="form-group col-md-6">
      <label >Department</label>
      <input type="text" class="form-control" id="department" name="department" readonly>
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >Account Code</label>
      <input type="text" class="form-control" id="acode" name="acode" readonly>
    </div>
    <div class="form-group col-md-6">
      <label >Supplier</label>
      <input type="text" class="form-control" id="supplier" name="supplier">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >P.O</label>
      <input type="text" class="form-control" id="po" name="po" readonly>
    </div>
    <div class="form-group col-md-6">
      <label >O.B.R</label>
      <input type="text" class="form-control" id="obr" name="obr" readonly>
    </div>
    </div>
      </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary ">Update</button>
            </form>
          </div> 
        </div>
        </div>
    </div>



        <div class="card-body">
        <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                   
                    <th>No. </th>
                    <th>ITEM</th>    
                    <th>DESCRIPTION</th>
                    <th>P.A.R NUMBER</th>
                    <th>AMOUNT</th>
                    <th>STATUS</th>
                  </tr>
                  </thead>
                  <tbody>
               
                 <?php 
                 
                 $aid = intval($_GET['acct']);
                 $query = "SELECT account_code.account_code,account_code.account_name,account_code.id, general_fund.item,
                 general_fund.description, general_fund.par_number, general_fund.account_code,general_fund.unit_value,general_fund.remarks
                 FROM account_code JOIN general_fund ON account_code.account_code = general_fund.account_code 
                 WHERE account_code.id = '$aid' ";
                 $cnt = 1;
                 $results = mysqli_query($conn, $query);
                 if(mysqli_num_rows($results) > 0){
                    foreach($results as $row){?>
                    <tr>
                      <td><?php echo htmlentities($cnt)?></td>
                      <td><?=$row['item']?></td>
                      <td><?=$row['description']?></td> 
                      <td ><?=$row['par_number']?></td>
                      <td ><?=$row['unit_value']?></td>
                      <td ><?=$row['remarks']?></td>
                    </tr>

               <?php $cnt++; } } ?>

                  </tbody> 
                  <tfoot>
                  <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                   
                    <th>No.</th>
                    <th>ITEM</th>    
                    <th>DESCRIPTION</th>
                    <th>P.A.R NUMBER</th>
                    <th>AMOUNT</th>
                    <th>STATUS</th>
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
<script src="../assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/plugins/jszip/jszip.min.js"></script>
<script src="../assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="../assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="../assets/plugins/jquery-validation/jquery.validate.min.js"></script><!-- jquery-validation -->
<script src="../assets/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="../assets/plugins/popper/popper.min.js"></script>
<script src="../assets/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
$(function(){ 
    $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false, columnDefs: [{targets: "_all",orderable: false}], "stateSave":true,
        "buttons": ["copy", "excel", "print", { extend: "pdfHtml5",orientation:"landscape",pageSize:"LEGAL",title:"RCPPE"}]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('[data-toggle="popover"]').popover();
});

</script>

</body>

</html>