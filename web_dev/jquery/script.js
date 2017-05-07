$(document).ready(function() {
  $("div").click(function() {
    $("textarea").animate({
      left: '250px',
      height: '+=150px',
      width: '+=150px'
    });
  });
});