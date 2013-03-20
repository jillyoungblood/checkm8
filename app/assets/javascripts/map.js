$(function(){
  $('#graphit').click(getchartdata);

})

function getchartdata(){
  $.ajax({
    dataType: "JSON",
    url: "/bank/graph",
    method: "GET"
  }).done(displaychart);
  return false;
}

function displaychart(data ){
console.log(data);
$('#trans_form').empty();
$('#data').empty();
$('#graph').empty();
 Morris.Line({
  element: 'graph',
  data: data,
  xkey: 'y',
  ykeys: ['a'],
  ymin: 'auto',
  ymax: 'auto',
  labels: ['Balance']
});

}

function cancel_trans(){
  $('#trans_form').empty();
}