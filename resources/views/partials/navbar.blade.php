<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <div class="container">
      <a class="navbar-brand" href="#">YA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ ($active == "Home") ? 'active' : '' }}" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active == "About") ? 'active' : '' }}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active == "Posts") ? 'active' : '' }}" href="/blog">Blog</a>
          </li>
            <li class="nav-item">
              <a class="nav-link {{ ($active == "Categories") ? 'active' : '' }}" href="/categories">Categories</a>
            </li>
        </ul>

        
        <ul class="navbar-nav">
            @auth
    
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Welcome back, {{ auth()->user()->name }}
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/dashboard">Dashboard</a>
                <div class="dropdown-divider"></div>
                <form action="/logout" method="post">
                  @csrf
                  
                  <button type="submit" class="dropdown-item">
                    Logout
                  </button>
                  
                </form>
              </div>
            </li>
    
            @else
            <li class="nav-item float-right">
              <a class="nav-link {{ ($active == "Login") ? 'active' : '' }}" href="/login">Login</a>
            </li>
            @endauth
          </ul>

      </div>
    </div>
  </nav>