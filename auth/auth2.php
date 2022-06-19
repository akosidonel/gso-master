<?php

include('../database/databaseConnection.php');


$invid = mysqli_real_escape_string($conn, $_GET['invid']);

    $sql = "SELECT general_fund.id,general_fund.item,general_fund.date_aquired,general_fund.description,general_fund.par_number,general_fund.account_code,general_fund.purchase_order,general_fund.obr_number,item_history.end_user,item_history.status,item_history.department_code,departments.department_name,departments.department_code
    FROM general_fund JOIN item_history ON general_fund.par_number = item_history.par_number
    JOIN departments ON item_history.department_code = departments.department_code
    WHERE general_fund.id = '$invid' AND item_history.status = '1' LIMIT 1 ";
    $query = mysqli_query($conn, $sql);
    $cnt = 1;
    while($row = mysqli_fetch_array($query)){?>
        
    

  <!-- Main content -->
  <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row mb-1">
                <div class="col-12">
                  <h4 id="item">
                  <?php echo $row['item']?>
                    <small class="float-right">Date: <?php echo $row['date_aquired']?> </small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  <address>
                    <strong>Description: </strong><br>
                    <?php echo $row['description']?>
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                <strong>Current user:</strong>
                  <address>
                  <?php echo $row['end_user']?><br>
                  </address>
                  <strong>Department:</strong>
                <address>
                <?php echo $row['department_name']?>
                </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  <b>P.A.R No. :</b> <?php echo $row['par_number']?><br>
                  <b>Purchase order:</b> <?php echo $row['purchase_order']?><br>
                  <b>Obr No.:</b> <?php echo $row['obr_number']?><br>
                  <b>Account code:</b> <?php echo $row['account_code']?>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
              <?php }?>

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
                    <tbody>
                    <?php

                    $invid = mysqli_real_escape_string($conn, $_GET['invid']);

                    $sql1 = "SELECT general_fund.id,general_fund.par_number,general_fund.date_aquired,item_history.par_number,item_history.end_user,item_history.status,item_history.department_code,departments.department_name,departments.department_code
                    FROM general_fund JOIN item_history ON general_fund.par_number = item_history.par_number JOIN departments ON item_history.department_code = departments.department_code
                    WHERE general_fund.id = '$invid' AND item_history.status = '0'";
                    $query =mysqli_query ($conn, $sql1);
                    if(mysqli_num_rows($query)>0){
                        foreach($query  as $result){?>
                            <tr>
                                <td><?php  echo htmlentities($cnt) ?></td>
                                <td><?php  echo $result['end_user']?></td>
                                <td><?php  echo $result['department_name']?></td>
                                <td><?php  echo $result['date_aquired']?></td>
                            </tr>
                            <?php $cnt++; }}
                            else{
                                echo '<tr class="text-center">
                                <td colspan="4" ><h6>No History</h6></td>
                                </tr>'; 
                            }?>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
  
            </div>
            <!-- /.invoice -->








