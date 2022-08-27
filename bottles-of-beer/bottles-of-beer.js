function bottlesOfBeer() {
  var numberOfBottles = 99;
  var bottleWord = "bottles";
  while (numberOfBottles > 0) {
    console.log(numberOfBottles + " " + bottleWord + " of beer on the wall");
    console.log(numberOfBottles + " " + bottleWord + " of beer");
    console.log("Take one down, pass it around,");
    numberOfBottles--;
    if (numberOfBottles === 1) {
      bottleWord = "bottle";
    }
    if (numberOfBottles === 0) {
      break;
    }
    console.log(numberOfBottles + " " + bottleWord + " of beer on the wall");
  }
  console.log("No more bottles of beer on the wall");
  console.log("No more bottles of beer on the wall");
  console.log("No more bottles of beer");
  console.log("Go to the store and buy some more,");
  console.log("99 bottles of beer on the wall");
}

bottlesOfBeer();
