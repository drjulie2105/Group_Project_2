
// Define SVG area dimensions
var svgWidth = 1300;
var svgHeight = 700;

// Define the chart's margins as an object
var chartMargin = {
  top: 110,
  right: 30,
  bottom: 30,
  left: 65
};

// Define dimensions of the chart area
var chartWidth = svgWidth - chartMargin.left - chartMargin.right;
var chartHeight = svgHeight - chartMargin.top - chartMargin.bottom;

// Select body, append SVG area to it, and set the dimensions
var svg = d3.select("body")
  .append("svg")
  .attr("height", svgHeight)
  .attr("width", svgWidth);

// Append a group to the SVG area and shift ('translate') it to the right and to the bottom
var chartGroup = svg.append("g")
  .attr("transform", `translate(${chartMargin.left}, ${chartMargin.top})`);

// Load data from csv
d3.csv("data/merge_df_2000.csv").then(function(electionData) {

  console.log(electionData);

//   // Cast the votes value to a number for each piece of electionData
  electionData.forEach(function(d) {
    d.totalvotes = +d.totalvotes;
  });


  // // Configure a band scale for the horizontal axis with a padding of 0.1 (10%)
  var xBandScale = d3.scaleBand()
    .domain(electionData.map(d => d.state_po_Dem))
    .range([0, chartWidth])
    .padding(0.1);
  

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


 //Configure a drawLine function which will use our scales to plot the line's points
  var drawLine = d3
    .line()
    .x(data => xBandScale(data.state_po))
    .y(data => yLinearScale(data.totalvotes));

  // Append an SVG path and plot its points using the line function
  chartGroup.append("path")
    // The drawLine function returns the instructions for creating the line 
    .attr("d", drawLine(electionData))
    .classed("line", true);
}).catch(function(error) {
  console.log(error);
});
