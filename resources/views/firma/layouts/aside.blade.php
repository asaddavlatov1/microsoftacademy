<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="{{ route('dashboard') }}">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-cources" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Kurslar</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-cources" class="nav-content collapse {{ request()->routeIs('admin.cources.*' ) ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
          <li>
            <a href="{{ route('admin.cources.index') }}">
              <i class="bi bi-circle"></i><span>Kurslar</span>
            </a>
          </li>
        </ul>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-group" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Guruhlar</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-group" class="nav-content collapse {{ request()->routeIs('admin.groups.*' ) ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
          <li>
            <a href="{{ route('admin.groups.index') }}">
              <i class="bi bi-circle"></i><span>Guruhlar</span>
            </a>
          </li>
        </ul>
      </li>

    </ul>

  </aside><!-- End Sidebar-->
