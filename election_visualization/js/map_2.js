// Create a map object
var myMap = L.map("map_2", {
    center: [39.1155, -94.6268],
    zoom: 5
  });

// Fetch geojson data
fetch("data/lat_long_2000.geojson")
  .then(function(resp) {
    return resp.json();
  })
  .then(function(data) {
    L.geoJson(data).addTo(myMap);
  })

// Add a tile layer
L.tileLayer("https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}", {
  attribution: "© <a href='https://www.mapbox.com/about/maps/'>Mapbox</a> © <a href='http://www.openstreetmap.org/copyright'>OpenStreetMap</a> <strong><a href='https://www.mapbox.com/map-feedback/' target='_blank'>Improve this map</a></strong>",
  tileSize: 512,
  maxZoom: 18,
  zoomOffset: -1,
  id: "mapbox/streets-v11",
  accessToken: "pk.eyJ1IjoiamFwNDMyMTAiLCJhIjoiY2toZmdpZGV3MGNlYzJxb2oxY2YxN3lreCJ9.03_5PIUOCTpSUSFkNaNqxA"
}).addTo(myMap);

// for (var i = 0; i < state.length; i++) {
//   var state = cities[i];
//   L.marker(city.location)
//     .bindPopup("<h1>" + city.name + "</h1> <hr> <h3>Population " + city.population + "</h3>")
//     .addTo(myMap);

// var heatArray = [];

//   for (var i = 0; i < response.length; i++) {
//     var geometry = response[i].geometry;

//     if (location) {
//       heatArray.push([geometry.coordinates[1], geometry.coordinates[0]]);
//     }
//   }

//   var heat = L.heatLayer(heatArray, {
//     radius: 30,
//     blur: 20
//   }).addTo(myMap);





