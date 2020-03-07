var API_KEY = "pk.eyJ1Ijoic3RldmVuZW8iLCJhIjoiY2s0ZGthczZjMDNzYjNkbzcwZDIyZjV1ZiJ9.gWEcUVeeqVeLY7v58M6lFg";

//map 
var myMap =L.map("map", {
    center: [45.52, -122.67],
    zoom: 13
  });
  
  var streetmap = L.tileLayer("https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}", {
  attribution: "Map data &copy; <a href=\"https://www.openstreetmap.org/\">OpenStreetMap</a> contributors, <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, Imagery © <a href=\"https://www.mapbox.com/\">Mapbox</a>",
  maxZoom: 18,
  id: "mapbox.streets",
  accessToken: API_KEY
})

streetmap.addTo(myMap);



d3.json("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson", function(data) {
  L.geoJson(data, {
    style: function(feature) {
      return {
        color: "white",
        // Call the chooseColor function to decide which color to color our neighborhood (color based on borough)
        fillColor: chooseColor(feature.properties.borough),
        fillOpacity: 0.5,
        weight: 1.5
      }
    }
  }).addTo(map);
});
