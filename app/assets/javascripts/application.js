//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery-ui
//= require popper
//= require bootstrap-sprockets
//= require datatables
//= require bootstrap-datepicker
//= require toastr
//= require_tree .

$(document).ready(function(){
  toastr.options = {
    "closeButton": false,
    "debug": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }
});

$(document).ready(function(){
  $(".alert").alert();
  window.setTimeout(function() {
    $(".alert").slideUp(function() {
      $(".alert").alert('close');
    });
  }, 5000);
});

$(document).ready(function() {
  $("#dttb").dataTable({
    language: {
        url: 'https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
    },
    "order": [[ 0, "desc" ]],
  });
});

$(document).ready(function(){
  $('.datepicker0').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).ready(function(){
  $('.datepicker1').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).ready(function(){
  $('.datepicker2').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});

$(document).ready(function(){
  $('.notification_date').datepicker({
    format: "dd/mm/yyyy",
    language: "es"
  });
});
