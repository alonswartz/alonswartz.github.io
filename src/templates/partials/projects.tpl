% for p in projects:
  <div class="col-xs-12 col-sm-6 col-lg-4 project">
    <h3><a href="{{!p.link}}">{{!p.name}}</a></h3>
    % if p.desc:
      <p>{{!p.desc}}</p>
    % end
  </div>
% end
