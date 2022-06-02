<?php 
include('../database/databaseConnection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Inventory | GSO</title>

  
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
            <h1>Inventory</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item"><a href="general-fund-department.php">Department</a></li>
              <li class="breadcrumb-item active">Inventory</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

   
    <section class="content"> <!-- Main content -->

     
      <div class="card"> <!-- Default box -->
        <div class="card-header">
          <?php
          $did = intval($_GET['dept']);
          $sql = "SELECT departments.deptid,departments.department_code,general_fund.department,general_fund.department_code FROM departments JOIN general_fund ON departments.department_code = general_fund.department_code 
          WHERE departments.deptid = '$did' LIMIT 1 ";
          $query = mysqli_query($conn, $sql);
          if(mysqli_num_rows($query)>0){
            foreach($query as $result){?>
                <h3 class="card-title"><i class="fas fa-clipboard"></i>&nbsp; <?=$result['department']?>&nbsp;Inventory</h3>
            <?php }}?>  
        </div>





        <div class="modal fade" id="viewInModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Item Information</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form method="POST">
      <div class="form-row">
        <div class="form-group col-md-6">
          <label >P.A.R Number</label>
          <input type="text" class="form-control" id="vpar">
        </div>
    <div class="form-group col-md-6">
      <label >Date Aquired</label>
      <input type="text" class="form-control" id="vdate">
    </div>
  </div>
  <div class="form-group">
    <label >Status</label>
    <input type="text" class="form-control" id="vstatus">
  </div>
  <div class="form-group">
    <label >Quantity</label>
    <input type="text" class="form-control" id="vquantity">
  </div>
  <div class="form-group">
    <label >Item</label>
    <input type="text" class="form-control" id="vitem">
  </div>
  <div class="form-group">
    <label >Description</label>
    <textarea class="form-control" id="vdescription" rows="4"></textarea>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label >Unit Value</label>
      <input type="text" class="form-control" id="vuvalue">
    </div>
    <div class="form-group col-md-6">
      <label >Total Value</label>
      <input type="text" class="form-control" id="vtvalue">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >Department</label>
      <input type="text" class="form-control" id="vdepartment">
    </div>
    <div class="form-group col-md-6">
      <label >End User</label>
      <input type="text" class="form-control" id="venduser">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >Account Code</label>
      <input type="text" class="form-control" id="vacode">
    </div>
    <div class="form-group col-md-6">
      <label >Supplier</label>
      <input type="text" class="form-control" id="vsupplier">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >P.O</label>
      <input type="text" class="form-control" id="vpo">
    </div>
    <div class="form-group col-md-6">
      <label >O.B.R</label>
      <input type="text" class="form-control" id="vobr">
    </div>
    </div>
      <div class="form-group">
            <label >Remarks</label>
            <textarea class="form-control" id="vremarks" rows="2"></textarea>
      </div>
      </div>
      </form>
        </div>
        </div>
    </div>





    <div class="modal fade" id="editInModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Item Information</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form method="POST" id="inventory_update">
      <div class="form-row">
        <input type="hidden" id="InvId" name="InvId" >
        <div class="form-group col-md-6">
          <label >P.A.R Number</label>
          <input type="text" class="form-control" id="par" name="par">
        </div>
    <div class="form-group col-md-6">
      <label >Date Aquired</label>
      <input type="text" class="form-control" id="date" name="date">
    </div>
  </div>
  <div class="form-group">
    <label >Status</label>
    <input type="text" class="form-control" id="status" name="status">
  </div>
  <div class="form-group">
    <label >Quantity</label>
    <input type="text" class="form-control" id="quantity" name="quantity">
  </div>
  <div class="form-group">
    <label >Item</label>
    <input type="text" class="form-control" id="item" name="item">
  </div>
  <div class="form-group">
    <label >Description</label>
    <textarea class="form-control" id="description" name="descrption" rows="4"></textarea>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label >Unit Value</label>
      <input type="text" class="form-control" id="uvalue" name="uvalue">
    </div>
    <div class="form-group col-md-6">
      <label >Total Value</label>
      <input type="text" class="form-control" id="tvalue" name="tvalue">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >Department</label>
      <input type="text" class="form-control" id="department" name="department">
    </div>
    <div class="form-group col-md-6">
      <label >End User</label>
      <input type="text" class="form-control" id="enduser" name="enduser">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >Account Code</label>
      <input type="text" class="form-control" id="acode" name="acode">
    </div>
    <div class="form-group col-md-6">
      <label >Supplier</label>
      <input type="text" class="form-control" id="supplier" name="supplier">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label >P.O</label>
      <input type="text" class="form-control" id="po" name="po">
    </div>
    <div class="form-group col-md-6">
      <label >O.B.R</label>
      <input type="text" class="form-control" id="obr" name="obr">
    </div>
    </div>
      <div class="form-group">
            <label >Remarks</label>
            <textarea class="form-control" id="remarks" name="remarks" rows="2"></textarea>
      </div>
      </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Update</button>
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
                    <th>TOTAL VALUE</th>
                    <th>DATE</th>
                    <th>QTY</th>
                    <th>END USER</th>
                    <th>ACCOUNT CODE</th>
                    <th>ACTION</th>
                  </tr>
                  </thead>
                  <tbody>
               
                 <?php 
                 
                 $did = intval($_GET['dept']);
                 $query = "SELECT departments.deptid,departments.department_code,general_fund.id,general_fund.item,
                 general_fund.description,general_fund.par_number,general_fund.unit_value,general_fund.total_value,general_fund.date_aquired,
                 general_fund.quantity,general_fund.end_user,general_fund.account_code,general_fund.department,
                 general_fund.department_code,general_fund.supplier,general_fund.status 
                 FROM departments JOIN general_fund ON departments.department_code = general_fund.department_code WHERE departments.deptid = '$did' ";
                 $results = mysqli_query($conn, $query);
                 $cnt=1;
                 if(mysqli_num_rows($results)>0){
                    foreach($results as $row){?>
                    <tr>
                      <td><?php echo htmlentities($cnt); ?></td>
                      <td><?=$row['item']?></td>
                      <td><?=$row['description']?></td>
                      <td><?=$row['par_number']?></td>
                      <td><?=$row['unit_value']?></td>
                      <td><?=$row['total_value']?></td>
                      <td><?=$row['date_aquired']?></td>
                      <td><?=$row['quantity']?></td>
                      <td><?=$row['end_user']?></td>
                      <td><?=$row['account_code']?></td>
                      <td>
                     
                      <div class="btn-group">
                          <button type="button" value="<?=$row['id']?>" class="btn btn-info btn-sm viewIn"  data-toggle="modal" data-target="#viewInModal"><i class="fas fa-eye" data-toggle="popover" data-content="View" data-trigger="hover"></i></button>
                          <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52"><i class="fas fa-bars" data-toggle="popover" data-content="Actions" data-trigger="hover"></i></button>
                    <div class="dropdown-menu" role="menu">
                      <a href="#" class="dropdown-item editInv" data-toggle="modal" data-target="#editInModal" data-value="<?=$row['id']; ?>" ><i class="fas fa-edit"></i>&nbsp; Edit</a>
                      <a href="#" class="dropdown-item"><i class="fas fa-box-open"></i>&nbsp; Return item</a>
                      <a href="#" class="dropdown-item"><i class="fas fa-archive"></i>&nbsp;&nbsp;  Archive</a>
                    </div>
                  </div>
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
                    <th>TOTAL VALUE</th>
                    <th>DATE</th>
                    <th>QTY</th>
                    <th>END USER</th>
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
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "excel", "print", { extend: "pdfHtml5",orientation:"landscape",pageSize:"LEGAL",title:"RCPPE"}]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('[data-toggle="popover"]').popover()
});
</script>
<script>
  $(document).on('click','.editInv', function(){
      var invid = $(this).data("value");
      $.ajax({
        type: 'GET',
        url:'../auth/auth.php?invid='+ invid,
        success: function(response){

          var res = jQuery.parseJSON(response);

          if(res.status==422){
            alert(res.message);
          }else if(res.status == 200){
            $('#InvId').val(res.data.id);
            $('#par').val(res.data.par_number);
            $('#date').val(res.data.date_aquired);
            $('#status').val(res.data.status);
            $('#quantity').val(res.data.quantity);
            $('#item').val(res.data.item);
            $('#description').val(res.data.description);
            $('#uvalue').val(res.data.unit_value);
            $('#tvalue').val(res.data.total_value);
            $('#department').val(res.data.department);
            $('#enduser').val(res.data.end_user);
            $('#acode').val(res.data.account_code);
            $('#supplier').val(res.data.supplier);
            $('#po').val(res.data.purchase_order);
            $('#obr').val(res.data.obr_number);
            $('#editInModal').modal('show');

          }
        }
      });
  });
  $(document).on('click','.viewIn', function(){
      var invid = $(this).val();
      $.ajax({
        type: 'GET',
        url:'../auth/auth.php?invid='+ invid,
        success: function(response){

          var res = jQuery.parseJSON(response);

          if(res.status==422){
            alert(res.message);
          }else if(res.status == 200){
            $('#vpar').val(res.data.par_number);
            $('#vdate').val(res.data.date_aquired);
            $('#vstatus').val(res.data.status);
            $('#vquantity').val(res.data.quantity);
            $('#vitem').val(res.data.item);
            $('#vdescription').val(res.data.description);
            $('#vuvalue').val(res.data.unit_value);
            $('#vtvalue').val(res.data.total_value);
            $('#vdepartment').val(res.data.department);
            $('#venduser').val(res.data.end_user);
            $('#vacode').val(res.data.account_code);
            $('#vsupplier').val(res.data.supplier);
            $('#vpo').val(res.data.purchase_order);
            $('#vobr').val(res.data.obr_number);
            $('#viewInModal').modal('show');

          }
        }
      });
  });
  $(document).on('submit','#inventory_update',function(e){
    e.preventDefault();

    var fd = new FormData(this);
    fd.append("update_inventory",true);

    $.ajax({
      type: "POST",
      url: '../auth/auth.php',
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
              $('#editInModal').modal('hide');
              $('#inventory_update')[0].reset();
              $('#example1').load(location.href + " #example1");
            }
      }
    }); 
  });
</script>
