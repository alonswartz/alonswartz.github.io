% rebase('base.tpl', root='.', title='Alon Swartz')

<div class="container container-links">
  <h1>A few projects I'm involved in</h1>
  % include('projects/featured.tpl')

  <h1>Some of my personal projects</h1>
  % include('projects/personal.tpl')

  <h1>Other</h1>
  % include('projects/other.tpl')

  <h1>Contact</h1>
  <ul class="list-unstyled">
    <li>alon@alonswartz.org <a href="https://keybase.io/alonswartz">GPG key</a></li>
    <li>+972-54-8114535</li>
  </ul>
</div>

