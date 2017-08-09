var colors = ["raspberry ombre","purple", "metallic yellow", "sky blue"];
var names = ["Lola", "Horace", "Gracie", "Seabiscuit"];

colors.push("mandarin");
names.push("Tracy");

var horses = {};

for (var i=0; i < colors.length; i++){
  horses[names[i]] = colors[i];
}


//Driver Code

console.log(colors);
console.log(names);
console.log(horses);