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
            <li class="nav-item">
              <a class="nav-link {{ ($active == "Login") ? 'active' : '' }}" href="/login">Login</a>
            </li>
        </ul>

      </div>
    </div>
  </nav>