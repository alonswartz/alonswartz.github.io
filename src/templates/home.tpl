% rebase('base.tpl', root='.', title='Alon Swartz')

<div class="container container-links">
  <h1>A few projects I'm involved in</h1>
  % include('projects/featured.tpl')

  <h1>Some of my personal projects</h1>
  % include('projects/personal.tpl')

  <h1>A few tools I made</h1>
  % include('projects/tools.tpl')

  <h1>Other</h1>
  % include('projects/other.tpl')

  <h1>Contact</h1>
  <div id="contact" class="project">
    <h3>alon@alonswartz.org <a href="https://keybase.io/alonswartz">GPG KEY</a></h3>
    <h3>+972-54-8114535</h3>
  </div>
</div>

