<div class="row">
<ul class='list-inline'>
% for b in books:
  <li class="book">
    <a href="https://www.amazon.com/gp/product/{{!b.isbn}}?tag=alonswartz-20">
      <img src="https://images-eu.ssl-images-amazon.com/images/P/{{!b.isbn}}.01.LZ.jpg" title="{{!b.title}} - {{!b.author}}">
    </a>
  </li>
% end
</ul>
</div>

