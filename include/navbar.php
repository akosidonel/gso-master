<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

       <!-- Navbar Search -->
       <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#searchModal" role="button">
          <i class="fas fa-search fa-xl"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="notif" href="#" role="button">
          <i class="fas fa-bell fa-xl"></i>
          <span class="badge badge-danger navbar-badge">15</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="notif" href="#" role="button">
          <i class="fas fa-file-edit fa-xl"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt fa-xl"></i>
        </a>
      </li>
    </ul>
  </nav>

  <div>
  <!-- Modal -->
<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Search Information</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
      

            <div class="row">
                <div class="col-md-12">
                    <form action="simple-results.html">
                        <div class="input-group">
                            <input type="search" class="form-control form-control-m" id="livesearch" placeholder="Type your keywords here">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-m btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
<br>
            <h5 class="mb-3">Search Results:</h5>


            <div class="card" >
              <div class="card-header border-transparent">
                <h3 class="card-title">10 active property</h3>

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
                    <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr>
                    <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr> <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr> <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr> <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr> <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr> <tr>
                      <td>OR9842</td>
                      <td>Laptop</td>
                      <td>Accounting</td>
                      <td><span class="badge badge-success">ACTIVE</span></td>
                    </tr>
                  
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




      </div>
    </div>
  </div>
</div>
  </div>

<script type="text/javascript">
  $(document).ready(function(){
      $("#livesearch").keyup(function(){
          var input = $(this).val();
      });
  });
</script>