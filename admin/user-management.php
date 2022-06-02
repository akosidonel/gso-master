<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User Management | GSO</title>

  
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
            <h1>User Management</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User Management</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->

     
      <div class="card"> <!-- Default box -->
        <div class="card-header">
          <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; List of users</h3>

          <div class="card-tools">
          <button type="button" class="btn btn-block bg-gradient-primary btn-sm"  data-toggle="modal" data-target="#modal-lg"> <i class="fas fa-user-plus"></i>&nbsp; Add User</button> 
          <!-- add user modal -->
          <div class="modal fade" id="modal-lg">
            <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Add User Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form class="form-horizontal" id="user_form" method="POST" enctype="multipart/form-data">
            <div class="modal-body">

              <div class="alert alert-warning d-none"></div>

                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">First name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="fname" id="fname" placeholder="First name">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Last name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="lname" id="lname" placeholder="Last name">
                    </div>
                  </div> 
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                    </div>
                  </div> 
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Contact No.</label>
                    <div class="col-sm-10">
                      <input type="" class="form-control" name="contact" id="contact" placeholder="Contact number">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">User role</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="role" id="role">
                          <option value="">Select....</option>
                          <option value="Admin-GF">Admin-GF</option>
                          <option value="Admin-SF">Admin-SF</option>
                          <option value="Super-Admin">Super-Admin</option>
                        </select>
                    </div>
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
       <div class="modal fade" id="editmodal-lg">
          <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Add User Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form class="form-horizontal" id="user_update" method="POST" enctype="multipart/form-data">
            <div class="modal-body">
                <div class="card-body">
                <input type="hidden" name="Empid" id="Empid">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">First name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="efname" id="efname" placeholder="First name">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Last name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="elname" id="elname" placeholder="Last name">
                    </div>
                  </div> 
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" name="eemail" id="eemail" placeholder="Email">
                    </div>
                  </div> 
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Contact No.</label>
                    <div class="col-sm-10">
                      <input type="" class="form-control" name="econtact" id="econtact" placeholder="Contact number">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">User role</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="erole" id="erole">
                          <option value="">Select....</option>
                          <option value="Admin-GF">Admin-GF</option>
                          <option value="Admin-SF">Admin-SF</option>
                          <option value="Super-Admin">Super-Admin</option>
                        </select>
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
                    <th>EMPID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>CONTACT</th>
                    <th>ROLE</th>
                    <th>STATUS</th>
                    <th class="text-center">ACTION</th>
                  </tr>
                  </thead>
                  <tbody>

                  <?php 
                      $sql = "SELECT * FROM users";
                      $query = mysqli_query($conn, $sql);

                      if(mysqli_num_rows($query)){
                        foreach($query as $row){?>
                        
                          <tr>
                            <td><?=$row['empid'] ?></td>
                            <td><?=$row['fname'].' '.$row['lname'] ?></td>
                            <td><?=$row['email'] ?></td>
                            <td><?=$row['contact'] ?></td>
                            <td><?=$row['role'] ?></td>
                            <td><?php $stats=$row['status']; if($stats == 1){?>
                                                      <span style="color: green">Active</span>
                                                          <?php } else { ?>
                                                          <span style="color: red">Suspended</span>
                                                    <?php } ?>
                          </td>
                            <td class="text-center">
                              <a href="#" class="text-secondary h5" data-toggle="popover" data-content="Ban" data-trigger="hover"><i class="fas fa-ban"></i></a>&nbsp;&nbsp;
                              <button type="submit" value="<?= $row['empid'];?>" class="editemp btn btn-sm btn-success" data-toggle="modal" data-target="#editmodal-lg"><i class="fas fa-edit" data-toggle="popover" data-content="Edit" data-trigger="hover"></i></button>
                              <button type="submit" value="<?= $row['empid'];?>" class="deleteuser btn btn-sm btn-danger" ><i class="fas fa-trash" data-toggle="popover" data-content="Delete" data-trigger="hover"></i></button>
                            </td>
                          </tr>
                          <?php }
                      }?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>EMPID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>CONTACT</th>
                    <th>ROLE</th>
                    <th>STATUS</th>
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
$(document).on('submit','#user_form',function (e){
  e.preventDefault();
  var fd = new FormData(this);
  fd.append("save_user", true);

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
        $('#modal-lg').modal('hide');
        $('#user_form')[0].reset();
        $('#example1').load(location.href + " #example1");
      }
    }
  });
});

$(document).on('click','.editemp', function (){
  var empid = $(this).val();
 $.ajax({
   type:'GET',
   url: '../auth/auth.php?empid='+ empid,
   success:function(response){

      var res = jQuery.parseJSON(response);

      if(res.status == 422){
        alert(res.message);
      }else if(res.status == 200 ){
        
        $('#Empid').val(res.data.empid);
        $('#efname').val(res.data.fname);
        $('#elname').val(res.data.lname);
        $('#econtact').val(res.data.contact);
        $('#eemail').val(res.data.email);
        $('#erole').val(res.data.role);
        $('#estatus').val(res.data.status);
        $('#editmodal-lg').modal('show');
    
      }
   }
 })
});

$(document).on('submit','#user_update',function (e){
  e.preventDefault();
  var fd = new FormData(this);
  fd.append("update_user", true);

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
        $('#editmodal-lg').modal('hide');
        $('#user_update')[0].reset();
        $('#example1').load(location.href + " #example1");
      }
    }
  });
});

$(document).on('click','.deleteuser',function(e){
  e.preventDefault();

  if(confirm("Are you sure?")){

    var deluser = $(this).val();

    $.ajax({
      type:"POST",
      url:"../auth/auth.php",
      data:{
        'delete_user':true,
        'deluser':deluser
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

</body>
</html>
