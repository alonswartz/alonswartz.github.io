% rebase('base.tpl', root='..', title='Alon Swartz')

<style>
ul {
  display: table-cell;
  vertical-align: middle;
}
.list-inline {
  padding-left: 0;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  margin-left: 1em;
  margin-right: 1em;
  margin-bottom: 2em;
}
.book img {
  width: 200px;
}
</style>

<div class="container">
  <h3>Currently Reading</h3>
  % include('books/reading.tpl')

  <h3>Read in 2019</h3>
  % include('books/read_2019.tpl')

  <h3>Read in 2018</h3>
  % include('books/read_2018.tpl')

  <h3>Read in 2017</h3>
  % include('books/read_2017.tpl')

  <h3>Read in 2016</h3>
  % include('books/read_2016.tpl')

  <h3>Read in 2015</h3>
  % include('books/read_2015.tpl')

  <h3>Read in 2014</h3>
  % include('books/read_2014.tpl')

</div>

