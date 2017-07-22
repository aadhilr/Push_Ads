


var lat="";
var lng="";
var x = "";
var adImg="";
    
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(setPosition);
        } else {
        alert("Geolocation is not supported by this browser.");
        }
    }
function setPosition(position) {
    lat= position.coords.latitude; 
    lng= position.coords.longitude;
    x.innerHTML = "Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude; 
}

function setAd(){
    $.ajax({ 
    type: 'POST', 
    url: 'http://localhost:9090/Ads/sync?lat='+lat+'&lng='+lng, 
    data: { get_param: 'value' }, 
    dataType: 'json',
    success: function (data) { 
       var obj = JSON.parse(data);
       $('#ad').attr('src', obj.imgUrl);
       alert(data);
    }
    });
}
function rotateAds(){
   setInterval(function(){
    setAd();}, 30000); 
}

