// RELEASE 0: WORK WITH ARRAYS //
var colors = ["blue", "red", "green", "yellow"]
var names = ["Skippy", "Slappy", "Stinky", "Mule"]

colors.push("pink");
names.push("Strinky");


//function newObject {
//  return {};
//}
//
//for (i = 0; i < names.length; i++) {
//  console.log("This horses name is" + " " + names//[i] + "," + "and has a color of" + " " + //colors[i] + ".");
//  newObject(names[i]) = colors[i];
//}
//
//return newObject();

function Car(model, type, year) {
  console.log("Our car is:", this);
  this.model = model;
  this.type = type;
  this.year = year;

  this.start = function() { console.log("Engine roar!"); };

  console.log("CAR INITIALIZATION COMPLETE");
}



