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

//fetch inventory details
if(isset($_GET['invid'])){
    
    $invid = mysqli_real_escape_string($conn, $_GET['invid']);
    
    $sql = "SELECT * FROM general_fund WHERE id = '$invid' LIMIT 1 ";
    $query = mysqli_query($conn, $sql);

    if(mysqli_num_rows($query) == 1){

        $inventory = mysqli_fetch_array($query);

        $res = [
            'status' => 200,
            'message' => 'Inventory id fetch successfully',
            'data' => $inventory
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

if(isset($_POST[''])){
    
}


?>