<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Department | GSO</title>

  
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
            <h1>Department</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Department</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->
     
     
      <div class="card"> <!-- Default box -->
        <div class="card-header">
          <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; List of department</h3>
          <div class="card-tools">
            <button type="button" class="btn btn-block bg-gradient-primary btn-sm"  data-toggle="modal" data-target="#addItemModal"><i class="fas fa-dolly-flatbed"></i>&nbsp; Add Property</button> 
          </div>
        </div>


        <!-- start modal -->
        <div class="modal fade" id="addItemModal" tabindex="-1" role="dialog" data-backdrop="static">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Add Property Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <!-- form -->

              <form id="item_form" method="POST" enctype="multipart/form-data">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label >Property Number</label>
                    <input type="text" class="form-control" name="property_number" id="property_number" placeholder="Property Number">
                  </div>
                  <div class="form-group col-md-6">
                    <label >Date Aquired</label>
                    <input type="text" class="form-control" name="datea" id="datea" placeholder="Date aquired">
                  </div>
                </div>
                <div class="form-group">
                  <label >Item</label>
                  <input type="text" class="form-control" name="item" id="item" placeholder="Item">
                </div>
                <div class="form-group">
                  <label >Description</label>
                <textarea name="description" id="description" cols="30" class="form-control" rows="2" placeholder="Description"></textarea>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label >Unit Value</label>
                    <input type="number" class="form-control" name="uvalue" id="uvalue" placeholder="Unit Value">
                  </div>
                  <div class="form-group col-md-6">
                    <label >Department</label>
                    <select name="department" id="department" class="form-control">
                      <option value="">-SELECT-</option>
                        <?php 
                        $sql = "SELECT * FROM departments";
                        $query = mysqli_query($conn,$sql);
                        if(mysqli_num_rows($query) > 0){
                        foreach($query as $result){?> 
                      <option value="<?php echo htmlentities($result['department_code']);?>"><?php echo htmlentities($result['department_name']);?></option>
                      <?php }} ?>
                    </select>
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label >End User</label>
                    <input type="text" class="form-control" name="user" id="user" placeholder="End User">
                  </div>
                  <div class="form-group col-md-6">
                    <label >Account code</label>
                      <select name="acode" id="acode" class="form-control">
                        <option value="">-SELECT-</option>
                        <?php
                        $sql = "SELECT * FROM account_code";
                        $query = mysqli_query($conn,$sql);
                        if(mysqli_num_rows($query)>0){
                          foreach($query as $row){?>
                        <option value="<?php echo htmlentities($row['account_code'])?>"><?php echo htmlentities($row['account_name'])?></option>
                      <?php }}
                        ?>
                      </select>
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label >P.O number</label>
                    <input type="text" class="form-control" name="po" id="po" placeholder="P.O Number">
                  </div>
                  <div class="form-group col-md-6">
                    <label >O.B.R number</label>
                    <input type="text" class="form-control" name="obr" id="obr" placeholder="O.B.R Number">
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label >Supplier</label>
                    <input type="text" class="form-control" name="supplier" id="supplier" placeholder="Supplier">
                  </div>
                  <div class="form-group col-md-6">
                    <label >Remarks</label>
                    <input type="text" class="form-control" name="remarks" id="remarks" placeholder="Remarks">
                  </div>
                </div>

            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-secondary"><i class="fas fa-hdd"></i>&nbsp; Print and Save</button>
              </form>
              <!-- form -->
            </div>
          </div>
        </div>
      </div>
      <!-- end modal -->


          
        <div class="card-body">
        <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                    <th>DEPARTMENT NAME</th>
                    <th>CODE</th>
                  </tr>
                  </thead>
                  <tbody>
               <?php
               
               $query = "SELECT * FROM departments";
               $results = mysqli_query($conn, $query);

              if(mysqli_num_rows($results)){
                foreach($results as $row){?>
              <tr>
                <td><a href="general-fund-inventory.php?dept=<?=$row['deptid']?>"><?=$row['department_name']?></a></td>
                <td><?=$row['department_code']?></td>
              </tr>
            
           <?php }               
               } ?>
                 
                  </tbody>
                  <tfoot>
                  <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                    <th>DEPARTMENT NAME</th>
                    <th>CODE</th>
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
<script src="../assets/plugins/popper/umd/popper.min.js"></script>
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script><!-- Bootstrap 4 -->
<script src="../assets/dist/js/adminlte.min.js"></script><!-- Custom App -->
<script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script><!-- DataTables  & Plugins -->
<script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../assets/plugins/jquery-validation/jquery.validate.min.js"></script><!-- jquery-validation -->
<script src="../assets/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="../assets/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
$(function(){ 
    $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false
      })//Page specific script
      $('[data-toggle="popover"]').popover()
});
</script>
 <script>
   $(document).on('submit','#item_form',function(e){
    e.preventDefault();
    var fd = new FormData(this);
    fd.append("save_item",true);

    $.ajax({
      type: "POST",
      url: "../auth/auth.php",
      data: fd,
      processData: false,
      contentType: false,
      success: function(response){
        var res = jQuery.parseJSON(response);

        if(res.status == 422){
                $('#errorMessage').text(res.message);
              }else if(res.status == 200 ){
                $('#addItemModal').modal('hide');
                $('#item_form')[0].reset();
                $('#example1').load(location.href + " #example1");
              }
      }
    });
   });
 </script>