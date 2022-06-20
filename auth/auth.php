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

//return items
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

//fetch return_item details
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



//fetch inventory details
if(isset($_GET['editinv'])){

    $invid = mysqli_real_escape_string($conn, $_GET['editinv']);
    
    $sql = "SELECT general_fund.id,general_fund.item,general_fund.date_aquired,general_fund.description,general_fund.par_number,general_fund.account_code,general_fund.purchase_order,general_fund.obr_number,general_fund.supplier
    FROM general_fund
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



//update item
if(isset($_POST['update_inventory'])){
    $InvId = mysqli_real_escape_string($conn, $_POST['InvId']);
    $date = mysqli_real_escape_string($conn, $_POST['date']);
    $item = mysqli_real_escape_string($conn, $_POST['item']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $uvalue = mysqli_real_escape_string($conn, $_POST['uvalue']);
    $supplier = mysqli_real_escape_string($conn, $_POST['supplier']);

    $query = "UPDATE general_fund SET item = '$item', description = '$description',
    unit_value = '$uvalue', date_aquired = '$date', supplier = '$supplier' WHERE id = '$InvId' ";

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
//add item
if(isset($_POST['save_item'])){
    $pr = mysqli_real_escape_string($conn, $_POST['property_number']);
    $datea = mysqli_real_escape_string($conn, $_POST['datea']);
    $item = mysqli_real_escape_string($conn, $_POST['item']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $uvalue = mysqli_real_escape_string($conn, $_POST['uvalue']);
    $department = mysqli_real_escape_string($conn, $_POST['department']);
    $user = mysqli_real_escape_string($conn, $_POST['user']);
    $acode = mysqli_real_escape_string($conn, $_POST['acode']);
    $po = mysqli_real_escape_string($conn, $_POST['po']);
    $obr = mysqli_real_escape_string($conn, $_POST['obr']);
    $supplier = mysqli_real_escape_string($conn, $_POST['supplier']);
    $remarks = mysqli_real_escape_string($conn, $_POST['remarks']);
    $departmentCode = 2;
    $status = 1;
   
    $sql = "INSERT INTO general_fund (par_number,item,description,unit_value,date_aquired,account_code,supplier,purchase_order,obr_number,remarks) 
    VALUES ('$pr','$item','$description','$uvalue','$datea','$acode','$supplier','$po','$obr','$remarks'); INSERT INTO item_history (par_number,end_user,department_code,status) VALUES ('$pr','$user','$departmentCode','$status');";
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

//insert and restore item
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


?>