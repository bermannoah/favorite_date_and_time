var root = 'http://localhost:3000/';

var monthsWithThirtyDays = function(data) {
  $('#individual-days').html('');
  $('#individual-days').append('<%= render ./app/views/landingthirty %>')
}

$(document).ready(function(){
  
  $('link[name="march"]').on('click', monthsWithThirtyDays);

  $('form').on('submit', function(event){
    event.preventDefault();
  });
});
