var colors = ["blue", "green", "red", "brown", "orange"];
var names = ["Misty", "Milly", "Manny", "Mama", "Marge"];
colors.push("pink");
names.push("Molly");
// console.log(colors);
// console.log(names);


var horseinfo = {};


for (var i = 0; i < colors.length; i++){
	horsename = names[i];
	horsecolor = colors[i];
	horseinfo [horsename] = horsecolor;
}
	console.log(horseinfo);