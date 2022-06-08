<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Return Item | GSO</title>

  
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
            <h1>Return Item</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Return Item</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->

    <div class="card"> <!-- Default box -->
        <div class="card-header">
          <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; List of returned items</h3>
        </div>

        <div class="modal fade" id="reassign" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Reassignment  Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="#" id="ret_form" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="inputAddress">P.A.R</label>
                <input type="text" class="form-control" name="par" id="par" placeholder="P.A.R">
              </div> 
              <div class="form-group">
                <label for="inputAddress">End User</label>
                <input type="text" class="form-control" id="enduser" name="enduser" placeholder="Username">
              </div> 
              <div class="form-group">
                <label for="inputAddress">Department</label>
                <select id="dept" name="dept" class="form-control">
                  <option selected>Choose...</option>
                  <option value="1">G.S.O</option>
                  <option value="2">Accounting</option>
                  <option value="8">B.A.C</option>
                </select>
              </div>
             
            </div> 
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary">Save changes</button>
              </form>
            </div>
          </div>
        </div>
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
                    <th>ACCOUNT CODE</th>
                    <th>ACTION</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                    $query = "SELECT * FROM return_item";
                    $results = mysqli_query($conn, $query);

                    if(mysqli_num_rows($results)){
                      foreach($results as $result){?>
                        <tr>
                          <td><?=$result['id']?></td>
                          <td><?=$result['item']?></td>
                          <td><?=$result['description']?></td>
                          <td><?=$result['par_number']?></td>
                          <td><?=$result['unit_value']?></td>
                          <td><?=$result['date_aquired']?></td>
                          <td><?=$result['account_code']?></td>
                          <td>
                          <button type="submit" value="<?= $result['id']; ?>" class="editreturn btn btn-sm btn-success" data-toggle="modal" data-target="#reassign"><i class="fas fa-recycle" data-toggle="popover" data-content="Re-M.R" data-trigger="hover"></i></button>
                          <button type="submit" value="<?= $result['id']; ?>" class="btn btn-sm btn-danger"><i class="fas fa-archive" data-toggle="popover" data-content="Archive" data-trigger="hover"></i></button>
                          </td>
                        </tr>
                    <?php }}?>
                
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>ID</th>
                    <th>ITEM</th>    
                    <th>DESCRIPTION</th>
                    <th>P.A.R NUMBER</th>
                    <th>UNIT VALUE</th>
                    <th>DATE</th>
                    <th>ACCOUNT CODE</th>
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
<script>
  $(document).on('click','.editreturn',function(){
      var retid = $(this).val();
      $.ajax({
        type:'GET',
        url: '../auth/auth.php?retid='+ retid,
        success:function(response){
            var res = jQuery.parseJSON(response);

            if(res.status == 422){
              alert(res.message);
            }else if(res.status == 200){
              $('#par').val(res.data.par_number);
              $('#reassign').modal('show');
        }
      }
    });
  });
  $(document).on('submit','#ret_form', function(e){
    e.preventDefault();
    var fd  = new FormData(this);
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
                $('#reassign').modal('hide');
                $('#ret_form')[0].reset();
                $('#example1').load(location.href + " #example1");
              }
      }
    });
  });
</script>