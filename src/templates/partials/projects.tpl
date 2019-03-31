<ul class="list-unstyled">
% for p in projects:
  % if p.desc:
  <li><a href="{{!p.link}}">{{!p.name}} - {{!p.desc}}</a></li>
  % else:
  <li><a href="{{!p.link}}">{{!p.name}}</a></li>
  % end
% end
</ul>
