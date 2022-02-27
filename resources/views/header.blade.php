<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Bali Gábor</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/">Kezdőlap</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('addTags')}}">Címkék hozzáadása</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('blogok.index')}}">Blogok</a>
          </li>
        </ul>
      </div>
    </div>
</nav>

