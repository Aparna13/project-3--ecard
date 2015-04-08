$(document).ready(function(){

  imageUrl = "https://farm3.staticflickr.com/2604/4030150829_168d9461e3_o.jpg";
  // imageUrl = "/images/chalk.jpg";
  
  $('#backbtn').on('click',function(e){
    e.preventDefault();
    $('.box').css('background-image', 'url(' + imageUrl + ')');
  });

  $('#backwhtbtn').on('click',function(e){
    e.preventDefault();
    $('.box').css('background', 'white');
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
    $('#maintext').css('color', '#333333');
      });

    $('.light').on('click',function(e){
     e.preventDefault();
       $('#maintext').css('color', 'white');
    });



    // $('.eximg').on('click',function(e){
    //   // e.preventDefault();
    //   // localStorage.setItem("src", $(".eximg img").attr('src'));
    //   // console.log($(".eximg img").attr('src'));
    //   // current_url = localStorage.getItem("src");
    //   // grab the img src (the child of the a tag)
    //   // use localStorage to set this item
    // // $('.image').css('background-image', 'url(' + current_url + ')');
    // //   });
    // });

  });