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
        <a class="nav-link" data-toggle="modal" data-target="#clearanceModal" href="#" role="button">
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
                    <form method="POST">
                        <div class="input-group">
                            <input type="search" class="form-control form-control-m" id="livesearch" placeholder="Type your keywords here" autocomplete="off">
                        </div>
                    </form>
                </div>
            </div>
          <br>
            <div id="results"></div> <!-- results -->
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="clearanceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Property Clearance</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form>
        <div class="form-row">
        <div class="form-group col-md-6">
            <label class="col-form-label">Control No.</label>
            <input type="text" class="form-control" id="name">
          </div>
          <div class="form-group col-md-6">
            <label for="message-text" class="col-form-label">Type</label>
          <select name="" id="" class="form-control">
            <option value="">Terminal Leave</option>
            <option value="">Vacation Leave</option>
            <option value="">Travel Abroad</option>
            <option value="">Resignation</option>
            <option value="">Retirement</option>
            <option value="">Transfer of Office</option>
            <option value="">Maternity Leave</option>
          </select>
          </div>
        </div>
          <div class="form-group">
            <label class="col-form-label">Name</label>
            <input type="text" class="form-control" id="name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Address</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Position</label>
            <input type="text" class="form-control" id="name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Department</label>
          <select name="" id="" class="form-control">
            <option value="">Accounting</option>
            <option value="">General Services Office</option>
            <option value="">Budget Office</option>
          </select>
          </div>
          
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Apply</button>
      </div>
    </div>
  </div>
</div>

 
  </div>





  <script src="../assets/plugins/jquery/jquery.min.js"></script><!-- jQuery -->
  <script type="text/javascript">
  $(document).ready(function(){
      $("#livesearch").keyup(function(){
          var input = $(this).val();
            $.ajax({
                url:"../auth/auth.php",
                method:"POST",
                data:{input:input},
                success:function(data){
                    $("#results").html(data);
                }
            });
      });
  });
</script>