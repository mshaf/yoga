$( document ).ready(function() 
  {
$("#form").submit(function(e){
        e.preventDefault();
      var lt = $("#lat").val();
      var ln = $("#lng").val();
      var fd = $("#food").val();
      alert(lt + "," + ln);
      
$.ajax({
    url:"https://api.foursquare.com/v2/venues/search?client_id=U14GLXIXCWH0EIWLA2URF4Z1FW323XRQRILC4MFCUIODE2OQ&client_secret=CLPVFJG13T0GGR3PGGLN0MD4R1MC1VK5YDMSLEPAFBNVOUEA&v=20130815&ll="+lt+","+ln+"&query="+fd,
    method:'GET',
    success:function(data){

      map = new GMaps({
  div: '#map',
  lat: lt,
  lng: ln,
});
      studioArray=[]
      for(var i = 0; i < data.response.venues.length; i++){ 
        if(data.response.venues[i].url!=undefined){
          studioArray.push(data.response.venues[i].url);
        }
        else{
          console.log("oops")
        }
};
    
  },
  
    error:function(){
      alert("error!")
    }
  })
});
});

