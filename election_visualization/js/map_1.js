// Create a map object
var myMap = L.map("map_1", {
  center: [39.1155, -94.6268],
  zoom: 5
});

// Add a tile layer
L.tileLayer("https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}", {
  attribution: "© <a href='https://www.mapbox.com/about/maps/'>Mapbox</a> © <a href='http://www.openstreetmap.org/copyright'>OpenStreetMap</a> <strong><a href='https://www.mapbox.com/map-feedback/' target='_blank'>Improve this map</a></strong>",
  tileSize: 512,
  maxZoom: 18,
  zoomOffset: -1,
  id: "mapbox/streets-v11",
  accessToken: "pk.eyJ1IjoiamFwNDMyMTAiLCJhIjoiY2toZmdpZGV3MGNlYzJxb2oxY2YxN3lreCJ9.03_5PIUOCTpSUSFkNaNqxA"
}).addTo(myMap);