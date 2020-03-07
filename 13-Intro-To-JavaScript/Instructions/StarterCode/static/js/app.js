// from data.js
var tableData = data;

// YOUR CODE HERE!

var tbody = d3.select("tbody");

// data.forEach(function(data) {
//     console.log(data);
//   });

// data.forEach(function(data){
//     console.log(data);
//     var row = tbody.append("tr");
// })

data.forEach((data) => {
    var row = tbody.append("tr");
    Object.entries(data).forEach(([key, value]) => {
        var cell = row.append("td");
        cell.text(value);
    });
});


//event listener
function handleClick() {
    
}
