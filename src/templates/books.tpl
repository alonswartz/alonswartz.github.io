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
.book, .book img, .book::after, .book::before {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
.book::after, .book::before {
  content: '';
  display: block;
  width: inherit;
  height: inherit;
  position: absolute;
  z-index: -1;
  top: 0;
  background: white;
  border: 1px solid #d9d9d9;
}
.book::before {
  left: -3px;
}
.book::after {
  left: -6px;
}
.book:hover {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.25), 0 9px 20px 0 rgba(0, 0, 0, 0.45);
}
.book:hover img {
  -webkit-transform: rotateY(-25deg);
  transform: rotateY(-25deg);
  box-shadow: 1px 1px 5px 5px rgba(0, 0, 0, 0.2);
}
.book a {
  cursor: pointer;
  display: block;
  width: 150px;
  height: 220px;
  position: relative;
  background: white;
  z-index: 1;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 9px 20px 0 rgba(0, 0, 0, 0.25);
  overflow: hidden;
  transition: box-shadow .3s linear;
}
.book a img {
  width: inherit;
  height: inherit;
  -webkit-transform-origin: 0 50%;
  -webkit-transform: rotateY(0);
  transform-origin: 0 50%;
  transform: rotateY(0);
  transition: all .45s ease;
}
#tlbl:hover {
  cursor: pointer;
  transition: all .3s ease-in-out;
  color: #e41919;
}
#toggle:checked ~ .row > .list-inline > .book {
  opacity: 0.3;
  background-color: #FFF;
}
#toggle:checked ~ .row > .list-inline > .rating-5 {
  opacity: 1;
  background-color: transparent;
}
</style>

<div class="container">
  <input type="checkbox" id="toggle" class="hidden"/>
  <center><label for="toggle" id="tlbl">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</label></center>

  <h3>Currently Reading</h3>
  % include('books/reading.tpl')

  <h3>Read in 2020</h3>
  % include('books/read_2020.tpl')

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

  <h3>Read in 2008-2013 (incomplete)</h3>
  % include('books/read_2013.tpl')

  <h3>Read in 2005-2008 (incomplete)</h3>
  % include('books/read_2008.tpl')

  <h3>Read in 2000-2004 (incomplete)</h3>
  % include('books/read_2004.tpl')

</div>

