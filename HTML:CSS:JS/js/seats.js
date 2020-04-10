$(document).ready(function(){


  $("#continue").on('click',function(){

    var numOfSeats = localStorage.getItem("Seats");
    var seatSelected = $('.seat.active').length;
    var seatNo="";
    if(numOfSeats!=seatSelected)
    {
      alert("Please select "+numOfSeats+" seats");
    }
    

  });
$('.cinema-seats .seat').on('click', function() {
    $(this).toggleClass('active');
    seatNo = ""+$(this).attr('index');
    localStorage.setItem("seat Num",seatNo);
  });

  
  
});
//   $(this).toggleClass('selected');
//   alert("already selected")
// });