<?php
include('../database/databaseConnection.php');

//multi-user login


//add user
if(isset($_POST['save_user'])){
  $fname = mysqli_real_escape_string($conn, $_POST['fname']);
  $lname = mysqli_real_escape_string($conn, $_POST['lname']);
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $contact = mysqli_real_escape_string($conn, $_POST['contact']);
  $password = mysqli_real_escape_string($conn, $_POST['password']);
  $password = password_hash($password, PASSWORD_DEFAULT);
  $role = mysqli_real_escape_string($conn,$_POST['role']);
  $status = 1;

  if($fname == NULL || $lname == NULL || $email == NULL || $contact == NULL || $password == NULL || $role == NULL){
        $res = [
            'status' => 422,
            'message' => 'All fields are required'
        ];
        echo json_encode($res);
        return false;  
  }

        $sql = "INSERT INTO users (fname,lname,contact,email,password,role,status) VALUES('$fname','$lname','$contact','$email','$password','$role','$status')";
        $query = mysqli_query($conn, $sql);

        if($query){
            $res = [
                'status' => 200,
                'message' => 'Added succesfully!'
            ];
            echo json_encode($res);
            return false;  
        }else{
            $res = [
                'status' => 500,
                'message' => 'opps..something went wrong..'
            ];
            echo json_encode($res);
            return false;  
        }
}

//fetch user details
if(isset($_GET['empid'])){
    $empdid = mysqli_real_escape_string($conn, $_GET['empid']);

    $sql = "SELECT * FROM users WHERE empid = '$empdid' LIMIT 1 ";
    $query = mysqli_query($conn,$sql);

    if(mysqli_num_rows($query) == 1){

        $emp = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Employee id fetch successfully',
            'data' => $emp
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No employee id found'
        ];
        echo json_encode($res);
        return false; 
    }
}

//update user
if(isset($_POST['update_user'])){
    $empid = mysqli_real_escape_string($conn, $_POST['Empid']);

    $fname = mysqli_real_escape_string($conn, $_POST['efname']);
    $lname = mysqli_real_escape_string($conn, $_POST['elname']);
    $email = mysqli_real_escape_string($conn, $_POST['eemail']);
    $contact = mysqli_real_escape_string($conn, $_POST['econtact']);
    $role = mysqli_real_escape_string($conn,$_POST['erole']);
    
  
    if($fname == NULL || $lname == NULL || $email == NULL || $contact == NULL || $role == NULL){
          $res = [
              'status' => 422,
              'message' => 'All fields are required'
          ];
          echo json_encode($res);
          return false;  
    }
  
          $sql = "UPDATE users SET fname='$fname', lname='$lname', contact='$contact', email='$email', role='$role'  WHERE empid ='$empid' ";
          $query = mysqli_query($conn, $sql);
  
          if($query){
              $res = [
                  'status' => 200,
                  'message' => 'Updated succesfully!'
              ];
              echo json_encode($res);
              return false;  
          }else{
              $res = [
                  'status' => 500,
                  'message' => 'opps..something went wrong..'
              ];
              echo json_encode($res);
              return false;  
          }
}

//delete user
if(isset($_POST['delete_user'])){
    
    $deluser = mysqli_real_escape_string($conn,$_POST['deluser']);

    $sql = "DELETE FROM users WHERE empid = '$deluser' ";
    $query = mysqli_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Deleted succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }
}

//add department
if(isset($_POST['save_dept'])){
  $deptname = mysqli_real_escape_string($conn, $_POST['deptname']);
  $deptcode = mysqli_real_escape_string($conn, $_POST['deptcode']);

  if($deptname == NULL || $deptcode == NULL){
      $res = [
          'status' => 422,
          'message' => 'All fields are required!.'
      ];
      echo json_encode($res);
      return false;
  }

  $sql = "INSERT INTO departments (department_name,department_code) VALUES('$deptname','$deptcode')";
  $query = mysqli_query($conn,$sql);

  if($query){

    $res = [
        'status' => 200,
        'message' => 'Added successfully!.'
    ];
    echo json_encode($res);
    return false;
  }else{
      $res = [
          'status' => 500,
          'message' => 'opps..something went wrong..'
      ];
      echo json_encode($res);
      return false;
  }
}

//fetch department details
if(isset($_GET['deptid'])){
    
    $deptid = mysqli_real_escape_string($conn, $_GET['deptid']);
    
    $sql = "SELECT * FROM departments WHERE deptid = '$deptid' LIMIT 1 ";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $dept = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Department id fetch successfully',
            'data' => $dept
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No department id found'
        ];
        echo json_encode($res);
        return false; 
    }
}

//update department
if(isset($_POST['update_dept'])){
    $DeptId = mysqli_real_escape_string($conn, $_POST['DeptId']);
    $DeptName = mysqli_real_escape_string($conn, $_POST['edeptname']);
    $DeptCode = mysqli_real_escape_string($conn, $_POST['edeptcode']);

    if($DeptName == NULL || $DeptCode == NULL){
        $res = [
            'status' => 422,
            'message' => 'All fields are required!.'
        ];
        echo json_encode($res);
        return false;
    }

    $sql = "UPDATE departments SET Department_name = '$DeptName' , Department_code = '$DeptCode' WHERE deptid = '$DeptId' ";
    $query = mysqli_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Updated succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }

}   

//delete department
if(isset($_POST['delete_dept'])){
    
    $deldept = mysqli_real_escape_string($conn,$_POST['deldept']);

    $sql = "DELETE FROM departments WHERE deptid = '$deldept' ";
    $query = mysqli_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Deleted succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }
}

//return property
if(isset($_POST['return_inv'])){

    $rinv = mysqli_real_escape_string($conn, $_POST['retInv']);
    $status = 0;

    $sql = "UPDATE item_history SET status = '$status' WHERE par_number = '$rinv'; INSERT INTO return_item SELECT * FROM general_fund WHERE par_number = '$rinv'; DELETE FROM general_fund WHERE par_number = '$rinv' ";
    $query = mysqli_multi_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Succesfully returned!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }
}

//archive items
if(isset($_POST['archive_inv'])){

    $ainv = mysqli_real_escape_string($conn, $_POST['arcInv']);

    $sql ="INSERT INTO archive SELECT * FROM general_fund WHERE id = '$ainv'; DELETE FROM general_fund WHERE id = '$ainv'";
    $query = mysqli_multi_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Succesfully archive!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }

}

//fetch return_property details
if(isset($_GET['retid'])){

    $retid = mysqli_real_escape_string($conn, $_GET['retid']);

    $sql = "SELECT * FROM return_item WHERE id = '$retid' "; 
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $returnItem = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Inventory id fetch successfully',
            'data' => $returnItem
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No inventory id found'
        ];
        echo json_encode($res);
        return false; 
    }
    

}

//fetch property details
if(isset($_GET['editinv'])){

    $invid = mysqli_real_escape_string($conn, $_GET['editinv']);
    
    $sql = "SELECT general_fund.id,general_fund.item,general_fund.date_aquired,general_fund.description,general_fund.par_number,
    general_fund.account_code,general_fund.purchase_order,general_fund.obr_number,general_fund.supplier,general_fund.unit_value,
    item_history.par_number,item_history.end_user,item_history.department_code,item_history.status,
    departments.department_code,departments.department_name
    FROM general_fund JOIN item_history ON item_history.par_number = general_fund.par_number
    JOIN departments ON item_history.department_code = departments.department_code
    WHERE general_fund.id = '$invid' LIMIT 1";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $returnItem = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Inventory id fetch successfully',
            'data' => $returnItem
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No inventory id found'
        ];
        echo json_encode($res);
        return false; 
    }
    
}



//update property
if(isset($_POST['update_inventory'])){
    $InvId = mysqli_real_escape_string($conn, $_POST['InvId']);
    $date = mysqli_real_escape_string($conn, $_POST['date']);
    $item = mysqli_real_escape_string($conn, $_POST['item']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $uvalue = mysqli_real_escape_string($conn, $_POST['uvalue']);
    $supplier = mysqli_real_escape_string($conn, $_POST['supplier']);

    $query = "UPDATE general_fund SET item = '$item', description = '$description',
    unit_value = '$uvalue', date_aquired = '$date', supplier = '$supplier' WHERE id = '$InvId'";

    $results = mysqli_query($conn, $query);

    if($results){
        $res = [
            'status' => 200,
            'message' => 'Updated succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }

}
 
//fetch property transfer detail
if(isset($_POST['propertyTransfer'])){

    $ptid = mysqli_real_escape_string($conn, $_POST['propertyTransfer']);

    $sql ="SELECT general_fund.id,general_fund.item,general_fund.par_number,
    item_history.par_number,item_history.end_user,item_history.department_code,
    departments.department_code,departments.department_name
    FROM general_fund JOIN item_history ON item_history.par_number = general_fund.par_number
    JOIN departments ON item_history.department_code = departments.department_code
    WHERE general_fund.id = '$ptid' LIMIT 1";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $returnProperty = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Property id fetch successfully',
            'data' => $returnProperty
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No property id found'
        ];
        echo json_encode($res);
        return false; 
    }

}

//add property
if(isset($_POST['save_item'])){
    $pr = mysqli_real_escape_string($conn, $_POST['property_number']);
    $datea = mysqli_real_escape_string($conn, $_POST['datea']);
    $item = mysqli_real_escape_string($conn, $_POST['item']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $uvalue = mysqli_real_escape_string($conn, $_POST['uvalue']);
    $user = mysqli_real_escape_string($conn, $_POST['user']);
    $acode = mysqli_real_escape_string($conn, $_POST['acode']);
    $po = mysqli_real_escape_string($conn, $_POST['po']);
    $obr = mysqli_real_escape_string($conn, $_POST['obr']);
    $supplier = mysqli_real_escape_string($conn, $_POST['supplier']);
    $remarks = mysqli_real_escape_string($conn, $_POST['remarks']);
    $departmentCode = mysqli_real_escape_string($conn, $_POST['department']);
    $status = 1;
   
    $sql = "INSERT INTO general_fund (par_number,item,description,unit_value,date_aquired,account_code,department_code,supplier,purchase_order,obr_number,remarks) 
    VALUES ('$pr','$item','$description','$uvalue','$datea','$acode','$departmentCode','$supplier','$po','$obr','$remarks');
    INSERT INTO item_history (par_number,end_user,department_code,status) VALUES ('$pr','$user','$departmentCode','$status');";
    $query = mysqli_multi_query($conn,$sql);

    if($query){
 
        $res = [
            'status' => 200,
            'message' => 'Added successfully!.'
        ];
        echo json_encode($res);
        return false;
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;
    }

}

//insert and restore property
if(isset($_POST['save_retitem'])){
    $rid = mysqli_real_escape_string($conn, $_POST['rid']);
    $par = mysqli_real_escape_string($conn, $_POST['par']);
    $enduser = mysqli_real_escape_string($conn, $_POST['enduser']);
    $dept = mysqli_real_escape_string($conn, $_POST['dept']);
    $stat =1;

    $sql = "INSERT INTO item_history (par_number,end_user,department_code,status) VALUES ('$par','$enduser','$dept','$stat'); INSERT INTO general_fund SELECT * FROM return_item WHERE id = '$rid'; DELETE FROM return_item WHERE id = '$rid' ";
    $query = mysqli_multi_query($conn,$sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Succesfully restore!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }

}

//view property details
if(isset($_POST['viewProperBtn'])){

    $pid = $_POST['propertyid'];
    $sql = "SELECT general_fund.id,general_fund.item,general_fund.date_aquired,general_fund.description,general_fund.par_number,general_fund.account_code,general_fund.purchase_order,general_fund.obr_number,item_history.end_user,item_history.status,item_history.department_code,departments.department_name,departments.department_code
    FROM general_fund JOIN item_history ON general_fund.par_number = item_history.par_number
    JOIN departments ON item_history.department_code = departments.department_code
    WHERE general_fund.id = '$pid' AND item_history.status = '1' LIMIT 1 ";
    $query = mysqli_query($conn, $sql);
    if(mysqli_num_rows($query) > 0){
        foreach ($query as $row){
            echo $return = '
            <!-- title row -->
            <div class="row mb-1">
              <div class="col-12">
                <h4 id="item">
                    '.$row['item'].'
                  <small class="float-right">Date: '.$row['date_aquired'].'</small>
                </h4>
              </div>
              <!-- /.col -->
            </div>
            <!-- info row -->
            <div class="row invoice-info">
              <div class="col-sm-4 invoice-col">
                <address>
                  <strong>Description: </strong><br>
                 '.$row['description'].'
                </address>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
              <strong>Current user:</strong>
                <address>
                '.$row['end_user'].'<br>
                </address>
                <strong>Department:</strong>
              <address>
              '.$row['department_name'].'
              </address>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
                <b>P.A.R No. :</b> '.$row['par_number'].'<br>
                <b>Purchase order:</b> '.$row['purchase_order'].'<br>
                <b>Obr No.:</b> '.$row['obr_number'].'<br>
                <b>Account code:</b> '.$row['account_code'].'
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
            ';
        }
    }
}

//view property history
if(isset($_POST['viewProperBtn'])){

    $pid = $_POST['propertyid'];
    $sql1 = "SELECT general_fund.id,general_fund.par_number,general_fund.date_aquired,
    item_history.par_number,item_history.end_user,item_history.status,item_history.department_code,
    departments.department_name,departments.department_code
    FROM general_fund JOIN item_history ON general_fund.par_number = item_history.par_number JOIN departments ON item_history.department_code = departments.department_code
    WHERE general_fund.id = '$pid' AND item_history.status = '0' LIMIT 5";
    $query =mysqli_query ($conn, $sql1);
    $cnt = 1;
    if(mysqli_num_rows($query) > 0){

        echo $return ='      
        <div class="row invoice-info mb-3 mt-3">
        <div class="col-sm-4 invoice-col">
          <strong>Property history</strong>
        </div>
      </div>

      <!-- Table row -->
      <div class="row">
        <div class="col-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr class="bg-dark text-light bg-gradient bg-opacity-150">
              <th>No.</th>
              <th>Previous user</th>
              <th>Department</th>
              <th>Date</th>
            </tr>
            </thead>
            <tbody>';

        foreach ($query as $result){
            echo $return = '
                        <tr>
                            <td>'.$cnt.'</td>
                            <td>'.$result['end_user'].'</td>
                            <td>'.$result['department_name'].'</td>
                            <td>'.$result['date_aquired'].'</td>
                        </tr>
            ';
            $cnt++;
        }
        echo $return = '  </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->';
    }else{
        echo $return = ' <div class="row invoice-info mb-3 mt-3">
        <div class="col-sm-4 invoice-col">
          <strong>Property history</strong>
        </div>
      </div>

      <!-- Table row -->
      <div class="row">
        <div class="col-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr class="bg-dark text-light bg-gradient bg-opacity-150">
              <th>No.</th>
              <th>Previous user</th>
              <th>Department</th>
              <th>Date</th>
            </tr>
            </thead>
            <tbody>
        
        <tr class="text-center">
        <td colspan="4" ><h6>No History</h6></td>
        </tr>
        
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
        
        '; 
    }
}
//add account code
if(isset($_POST['save_acct'])){

    $atitles = mysqli_real_escape_string($conn, $_POST['acctname']);
    $acode = mysqli_real_escape_string($conn, $_POST['acctcode']);
     
   
    $sql = "INSERT INTO account_code (account_name,account_code) VALUES('$atitles','$acode')";
    $query = mysqli_query($conn,$sql);
  
    if($query){
  
      $res = [
          'status' => 200,
          'message' => 'Added successfully!.'
      ];
      echo json_encode($res);
      return false;
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;
    }

}

//fetch account details
if(isset($_GET['acctid'])){
    
    $acctid = mysqli_real_escape_string($conn, $_GET['acctid']);
    
    $sql = "SELECT * FROM account_code WHERE id = '$acctid' LIMIT 1 ";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $dept = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Account code id fetch successfully',
            'data' => $dept
        ];
        echo json_encode($res);
        return false; 

    }else{
        $res = [
            'status' => 422,
            'message' => 'No Account code id found'
        ];
        echo json_encode($res);
        return false; 
    }
}

//update account code
if(isset($_POST['update_acct'])){
    $Id = mysqli_real_escape_string($conn, $_POST['AccntId']);
    $acctname = mysqli_real_escape_string($conn, $_POST['eacctname']);
    $acctcode = mysqli_real_escape_string($conn, $_POST['eacctcode']);

    if($acctname == NULL || $acctcode == NULL){
        $res = [
            'status' => 422,
            'message' => 'All fields are required!.'
        ];
        echo json_encode($res);
        return false;
    }

    $sql = "UPDATE account_code SET account_name = '$acctname' , account_code = '$acctcode' WHERE id = '$Id' ";
    $query = mysqli_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Updated succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }

} 
//delete account code
if(isset($_POST['delete_acct'])){
    
    $delacct = mysqli_real_escape_string($conn,$_POST['delacct']);

    $sql = "DELETE FROM account_code WHERE id = '$delacct' ";
    $query = mysqli_query($conn, $sql);

    if($query){
        $res = [
            'status' => 200,
            'message' => 'Deleted succesfully!'
        ];
        echo json_encode($res);
        return false;  
    }else{
        $res = [
            'status' => 500,
            'message' => 'opps..something went wrong..'
        ];
        echo json_encode($res);
        return false;  
    }
}

//live search
if(isset($_POST['input'])){
    $input = $_POST['input'];

    $sql = "SELECT * FROM item_history WHERE end_user LIKE '{$input}%' and status = '1' LIMIT 10 ";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query)>0){

        echo $return = '<h5 class="mb-3">Search Results:</h5>


        <div class="card" >
          <div class="card-header border-transparent">
            <h3 class="card-title">Active property</h3>
        
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table m-0">
                <thead>
                <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                  <th>P.A.R No.</th>
                  <th>Item</th>
                  <th>Department</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>';

        while($row = mysqli_fetch_assoc($query)){
            echo $return = ' <tr>
            <td>'.$row['par_number'].'</td>
            <td>'.$row['end_user'].'</td>    
            <td>'.$row['department_code'].'</td>
            <td>'.$row['status'].'</td>
          </tr>';
        }
        echo $return = '
        </tbody>
        </table>
      </div>
      <!-- /.table-responsive -->
    </div>
    <!-- /.card-body -->
    <div class="card-footer clearfix">
      <a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All</a>
    </div>
    <!-- /.card-footer -->
  </div>
  <!-- /.card -->
        ';
    }else{
        echo $return = '<h5 class="mb-3">Search Results:</h5>


        <div class="card" >
          <div class="card-header border-transparent">
            <h3 class="card-title">Active property</h3>
        
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table m-0">
                <thead>
                <tr class="bg-dark text-light bg-gradient bg-opacity-150">
                  <th>P.A.R No.</th>
                  <th>Item</th>
                  <th>Department</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <tr class="text-center">
                <td colspan="4" ><h6>No Records</h6></td>
                </tr>
                </tbody>
        </table>
      </div>
      
    </div>
  </div>';
    }
}
?>