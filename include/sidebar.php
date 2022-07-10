<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
<?php echo $page = substr($_SERVER['SCRIPT_NAME'] ,strrpos($_SERVER['SCRIPT_NAME'],"/")+1);?>
    <!-- Brand Logo -->
    <a href="#" class="brand-link text-center">
      <span class="brand-text font-weight-light"><strong>General Service Office</strong> </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel pb-3 mb-2 d-flex">
        <div class="image">
          <img src="../assets/dist/img/avatar4.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Reydonel Alfante</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-3">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        
          <li class="nav-item">
            <a href="../admin/dashboard.php" class="nav-link <?= $page == 'dashboard.php'? 'active':' '?>">
            <i class="nav-icon fa-solid fa-layer-group text-white"></i>
              <p>
                Dashboard     
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../admin/department.php" class="nav-link <?= $page == 'department.php'? 'active':' '?>" >
            <i class="nav-icon fas fa-building text-white"></i>
              <p>
                Department     
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../admin/account-code.php" class="nav-link <?= $page == 'account-code.php'? 'active':' '?>" >
            <i class="nav-icon fas fa-book text-white"></i>
              <p>
                Account Code   
              </p>
            </a>
          </li>
         
          <li class="nav-item">
            <a href="#" class="nav-link <?= $page == 'general-fund-department.php' || $page == 'general-fund-ics-department.php' ? 'active':' '?>">
            <i class="nav-icon fa-solid fa-cart-flatbed text-white"></i>
              <p>
                Inventory
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link <?= $page == 'general-fund-department.php' || $page == 'general-fund-ics-department.php' ? 'show':' '?>">
                  <i class="far fa-folder nav-icon"></i>
                  <p>
                    General Fund
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="../admin/general-fund-department.php" class="nav-link <?= $page == 'general-fund-department.php' || $page == 'general-fund-inventory.php' ? 'active':' '?>">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>P.A.R</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="../admin/general-fund-ics-department.php" class="nav-link <?= $page == 'general-fund-ics-department.php'? 'active':' '?>">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>I.C.S</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="../admin/general-fund-account-code.php" class="nav-link <?= $page == 'general-fund-account-code.php'? 'active':' '?>">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>Account Code</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="../admin/return-item.php" class="nav-link <?= $page == 'return-item.php'? 'active':' '?>">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>Return Item</p>
                    </a>
                  </li>
                </ul>   
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-folder nav-icon"></i>
                  <p>SEF</p>
                  <i class="right fas fa-angle-left"></i>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>P.A.R</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>I.C.S</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>Account Code</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-folder-open nav-icon"></i>
                      <p>Return Item</p>
                    </a>
                  </li>
                </ul>   
              </li>
              <li class="nav-item">
                <a href="../admin/archive.php" class="nav-link <?= $page == 'archive.php'? 'active':' '?>">
                  <i class="far fa-file-archive nav-icon"></i>
                  <p>Archive</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="../admin/user-management.php" class="nav-link <?= $page == 'user-management.php'? 'active':' '?>">
              <i class="fas fa-users-cog nav-icon text-white"></i>
              <p>User Management</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../admin/activity-log.php" class="nav-link <?= $page == 'activity-log.php'? 'active':' '?>">
              <i class="fas fa-chart-line nav-icon text-white"></i>
              <p>Activity Log</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-sign-out-alt nav-icon text-white"></i>
              <p>Log Out</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>