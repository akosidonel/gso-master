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
          <button type="button" class="btn btn-block bg-gradient-primary btn-sm"  data-toggle="modal" data-target="#addDeptModal"> <i class="fas fa-user-plus"></i>&nbsp; Add Department</button> 
          <!-- add user modal -->
          <div class="modal fade" id="addDeptModal">
            <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Add Department Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form class="form-horizontal" id="dept_form" method="POST" enctype="multipart/form-data">
            <div class="modal-body">

              <div class="alert alert-warning d-none"></div>

                <div class="card-body">
                  <div class="form-group">
                    <label>Department Name</label>
                      <input type="text" class="form-control" name="deptname" id="deptname" placeholder="Department name">  
                  </div>
                  <div class="form-group ">
                    <label>Department Code</label>
                      <input type="text" class="form-control" name="deptcode" id="deptcode" placeholder="Department Code">   
                  </div>   
                </div>
                <!-- /.card-body -->
                </div>
                  <div class="modal-footer">
                      <button type="submit" class="btn btn-info">Save</button>
                </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>



       <!-- edit user modal -->
       <div class="modal fade" id="editDeptModal">
          <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Edit Department Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form class="form-horizontal" id="dept_update" method="POST" enctype="multipart/form-data">
            <div class="modal-body">

              <div class="alert alert-warning d-none"></div>

                <div class="card-body">
                  <div class="form-group row">
                    <input type="hidden" name="DeptId" id="DeptId">
                    <label  class="col-sm-4 col-form-label">Department Name</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="edeptname" id="edeptname" placeholder="Department name">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-4 col-form-label">Code</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="edeptcode" id="edeptcode" placeholder="Code">
                    </div>
                  </div>   
                </div>
                <!-- /.card-body -->
                </div>
                  <div class="modal-footer">
                      <button type="submit" class="btn btn-info">Update</button>
                </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
        
        
        
        </div>
        </div>



        <div class="card-body">
        <table id="example1" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>DEPARTMENT NAME</th>
                    <th>CODE</th>
                    <th class="text-center">ACTION</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                    $query = "SELECT * FROM departments";
                    $results = mysqli_query($conn, $query);
                    
                    if(mysqli_num_rows($results)){
                      foreach($results as $result){?>
                      <tr>
                        <td><?=$result['department_name']?></td>
                        <td><?=$result['department_code']?></td>
                        <td class="text-center">
                          <button type="submit" value="<?= $result['deptid']; ?>" class="editdept btn btn-sm btn-success" data-toggle="modal" data-target="#editDeptModal"><i class="fas fa-edit" data-toggle="popover" data-content="Edit" data-trigger="hover"></i></button>
                          <button type="submit" value="<?= $result['deptid']; ?>" class="deldept btn btn-sm btn-danger"><i class="fas fa-trash" data-toggle="popover" data-content="Trash" data-trigger="hover"></i></button>
                        </td>
                      </tr>
                      <?php }
                    }?>
                 
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>DEPARTMENT NAME</th>
                    <th>CODE</th>
                    <th class="text-center">ACTION</th>
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
<script src="../assets/plugins/popper/umd/popper.min.js"></script>
<script src="../assets/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
$(function(){ 
    $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false
      })//Page specific script
      $('[data-toggle="popover"]').popover()

      $('#dept_form').validate({
          rules:{
            deptname:{
              required:true
            },
            deptcode:{
              required:true
            }
          },
          messages:{
            deptname:{
              required: "Please enter department name"
            },
            deptcode:{
              required: "Please enter department code"
            }
          },
          errorElement: 'span',
            errorPlacement: function (error, element) {
              error.addClass('invalid-feedback');
              element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
              $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
              $(element).removeClass('is-invalid');
            }
      });
});
</script>
<script>
 $(document).on('submit','#dept_form',function(e){
          e.preventDefault();
          var fd = new FormData(this);
          fd.append("save_dept",true);

          $.ajax({
            type: "POST",
            url: "../auth/auth.php",
            data: fd,
            processData: false,
            contentType: false,
            success:function(response){
              var res = jQuery.parseJSON(response);

              if(res.status == 422){
                $('#errorMessage').removeClass('d-none');
                $('#errorMessage').text(res.message);
              }else if(res.status == 200 ){
                $('#errorMessage').addClass('d-none');
                $('#addDeptModal').modal('hide');
                $('#dept_form')[0].reset();
                $('#example1').load(location.href + " #example1");
              }
            }
          });
      });

      $(document).on('click','.editdept', function(){
        var deptid = $(this).val();
        $.ajax({
          type:'GET',
          url:'../auth/auth.php?deptid='+ deptid,
          success:function(response){

            var res = jQuery.parseJSON(response);
            
            if(res.status == 422){
              alert(res.message);
            }else if(res.status == 200){

              $('#DeptId').val(res.data.deptid);
              $('#edeptname').val(res.data.department_name);
              $('#edeptcode').val(res.data.department_code);
              $('#editDeptModal').modal('show');
              
            }
          }
        });
      });

      $(document).on('submit','#dept_update',function(e){
        e.preventDefault();

        var fd = new FormData(this);
        fd.append("update_dept", true);

        $.ajax({
          type: "POST",
          url: "../auth/auth.php",
          data: fd,
          processData: false,
          contentType: false,
          success: function(response){
            var res = jQuery.parseJSON(response);

            if(res.status == 422){
              $('#errorMessage').removeClass('d-none');
              $('#errorMessage').text(res.message);
            }else if(res.status == 200 ){
              $('#errorMessage').addClass('d-none');
              $('#editDeptModal').modal('hide');
              $('#dept_update')[0].reset();
              $('#example1').load(location.href + " #example1");
            }
          }
        });
      });
      $(document).on('click','.deldept', function(e){
          e.preventDefault();

          if(confirm("Are you sure? ")){

          var deldept = $(this).val();

          $.ajax({
            type: "POST",
            url: "../auth/auth.php",
            data:{
              'delete_dept':true,
              'deldept':deldept
            },
            success:function(response){
              var res = jQuery.parseJSON(response);
              if(res.status == 500){
                alert(res.message);
              }else{
                alert(res.message);

                $('#example1').load(location.href + " #example1");
              }
            }
          });
        }
      });

</script>
