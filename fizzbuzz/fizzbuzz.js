function fizzBuzz() {
  var output = [];
  var number = 1;
  while (number <= 100) {
    if (number % 15 === 0) {
      output.push("FizzBuzz");
    } else if (number % 3 === 0) {
      output.push("Fizz");
    } else if (number % 5 === 0) {
      output.push("Buzz");
    } else {
      output.push(number);
    }
    number++;
  }
  console.log(output);
}

fizzBuzz();
