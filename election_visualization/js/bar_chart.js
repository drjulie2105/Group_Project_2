// Create variable to select the election year
var electionYear = d3.select('#selectOption').property("value")
console.log(electionYear);
changeYear(electionYear);

// Create a function that will create the chart based on the selected year
function changeYear(electionYear){
  // Clear out the old chart before creating new chart
  d3.select('#d3Id').html("");

// Define SVG area dimensions
var svgWidth = 1300;
var svgHeight = 600;

// Define the chart's margins as an object
var chartMargin = {
  top: 125,
  right: 30,
  bottom: 30,
  left: 65
};

// Define dimensions of the chart area
var chartWidth = svgWidth - chartMargin.left - chartMargin.right;
var chartHeight = svgHeight - chartMargin.top - chartMargin.bottom;

// Select body, append SVG area to it, and set the dimensions
var svg = d3.select("#d3Id")
  .append("svg")
  .attr("height", svgHeight)
  .attr("width", svgWidth);

// Append a group to the SVG area and shift ('translate') it to the right and to the bottom
var chartGroup = svg.append("g")
  .attr("transform", `translate(${chartMargin.left}, ${chartMargin.top})`);

// // Load data from csv

d3.csv(`data/merge_df_${electionYear}.csv`).then(function(electionData) {

  console.log(electionData);

// d3.csv("data/merge_df_2000.csv").then(function(electionData) {

//   console.log(electionData);

//   // Cast the votes value to a number for each piece of electionData
  electionData.forEach(function(d) {
    d.totalvotes = +d.totalvotes;
  });



  // // Configure a band scale for the horizontal axis with a padding of 0.1 (10%)
  var xBandScale = d3.scaleBand()
    .domain(electionData.map(d => d.state_po_Dem))
    .range([0, chartWidth])
    .padding(0.1);
  
  // Configure Y scale
  var yLinearScale = d3.scaleLinear()
    .domain([0, d3.max(electionData, d => d.totalvotes)])
    .range([chartHeight, 0]);
  


  // Create two new functions passing our scales in as arguments
  // These will be used to create the chart's axes
  var bottomAxis = d3.axisBottom(xBandScale);
  var leftAxis = d3.axisLeft(yLinearScale).ticks(10);


  // Append two SVG group elements to the chartGroup area,
  // and create the bottom and left axes inside of them

    chartGroup.append("g")
    .call(leftAxis);

  chartGroup.append("g")
    .attr("transform", `translate(0, ${chartHeight})`)
    .call(bottomAxis);

  // Create one SVG rectangle per election data
  // Use the linear and band scales to position each rectangle within the chart
  chartGroup.selectAll(".bar")
    .data(electionData)
    .enter()
    .append("rect")
    .attr("class", "bar")
    .attr("x", d => xBandScale(d.state_po_Dem))
    .attr("y", d => yLinearScale(d.totalvotes))
    .attr("width", xBandScale.bandwidth())
    .attr("height", d => chartHeight - yLinearScale(d.totalvotes))
    .style("fill", "#A12CD7");

}).catch(function(error) {
  console.log(error);
});}