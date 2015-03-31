$(document).ready(function(){
  imageUrl = "http://makinglemonadeblog.com/wp-content/uploads/2013/01/chalkboard_background_2.jpg";
  $('#backbtn').on('click',function(e){
    e.preventDefault();
    $('.box').css('background-image', 'url(' + imageUrl + ')');
      });

   $('.modern').on('click',function(e){
    e.preventDefault();
    $('#maintext').css('font-family', 'Oswald');
      });

   $('.cursive').on('click',function(e){
    e.preventDefault();
    $('#maintext').css('font-family', 'Lobster');
      });

    $('.dark').on('click',function(e){
    e.preventDefault();
    $('#maintext').css('font-color', '#333333');
      });

    $('.light').on('click',function(e){
    e.preventDefault();
    $('#maintext').css('font-color', 'white');
      });




  });