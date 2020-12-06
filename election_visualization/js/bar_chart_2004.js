
var container = d3.select('#d3Id04'),
width = 1300,
height = 660,
margin = {top: 70, right: 20, bottom: 20, left: 70},
barPadding = .2,
axisTicks = {qty: 5, outerSize: 0};

var svg = container
.append("svg")
.attr("width", width)
.attr("height", height)
.append("g")
.attr("transform", `translate(${margin.left},${margin.top})`);

var xScale0 = d3.scaleBand().range([0, width - margin.left - margin.right]).padding(barPadding)

var xScale1 = d3.scaleBand()

var yScale = d3.scaleLinear().range([height - margin.top - margin.bottom, 0])

var xAxis = d3.axisBottom(xScale0).tickSizeOuter(axisTicks.outerSize);
var yAxis = d3.axisLeft(yScale).ticks(axisTicks.qty).tickSizeOuter(axisTicks.outerSize);

// // Load data from csv
d3.csv("data/merge_df_2004.csv").then(function(electionData) {

console.log(electionData);

//   // Cast the votes value to a number for each piece of electionData
electionData.forEach(function(d) {
  d.candidatevotes_Dem = +d.candidatevotes_Dem;
  d.candidatevotes_Rep = +d.candidatevotes_Rep;
});


xScale0.domain(electionData.map(d => d.state_po_Dem))
xScale1.domain(['candidatevotes_Dem', 'candidatevotes_Rep']).range([0, xScale0.bandwidth()])
yScale.domain([0, d3.max(electionData, d => d.candidatevotes_Dem > d.candidatevotes_Rep ? d.candidatevotes_Dem : d.candidatevotes_Rep)])

var state = svg.selectAll(".state_abbr")
.data(electionData)
.enter().append("g")
.attr("class", "state_abbr")
.attr("transform", d => `translate(${xScale0(d.state_po_Dem)},0)`);

/* Add field1 bars */
state.selectAll(".bar.candidatevotes_Dem")
.data(d => [d])
.enter()
.append("rect")
.attr("class", "bar candidatevotes_Dem")
.style("fill","blue")
.attr("x", d => xScale1('candidatevotes_Dem'))
.attr("y", d => yScale(d.candidatevotes_Dem))
.attr("width", xScale1.bandwidth())
.attr("height", d => {
return height - margin.top - margin.bottom - yScale(d.candidatevotes_Dem)
});

/* Add field2 bars */
state.selectAll(".bar.candidatevotes_Rep")
.data(d => [d])
.enter()
.append("rect")
.attr("class", "bar candidatevotes_Rep")
.style("fill","red")
.attr("x", d => xScale1('candidatevotes_Rep'))
.attr("y", d => yScale(d.candidatevotes_Rep))
.attr("width", xScale1.bandwidth())
.attr("height", d => {
return height - margin.top - margin.bottom - yScale(d.candidatevotes_Rep)
});
// Add the X Axis
svg.append("g")
 .attr("class", "x axis")
 .attr("transform", `translate(0,${height - margin.top - margin.bottom})`)
 .call(xAxis);
// Add the Y Axis
svg.append("g")
 .attr("class", "y axis")
 .call(yAxis)});


