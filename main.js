$(document).ready(function(){
  $("#word-filter").keyup(function(){
    var filterWord = $("#word-filter").val();
    $(".column").hide().filter(':contains(' + filterWord + ')').show();
  });
});
