//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery-ui
//= require popper
//= require bootstrap-sprockets
//= require datatables
//= require bootstrap-datepicker
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  $("#dttb").dataTable({
    language: {
        url: 'https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
    },
    "order": [[ 0, "desc" ]],
  });
});

$(document).on('turbolinks:load', function(){
  $('.datepicker0').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).on('turbolinks:load', function(){
  $('.datepicker1').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).on('turbolinks:load', function(){
  $('.datepicker2').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).on('turbolinks:load', function(){
  $('.notification_date').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});
