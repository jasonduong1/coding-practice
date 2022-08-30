function fizzBuzz() {
  var output = [];
  for (var number = 1; number <= 100; number++) {
    if (number % 15 === 0) {
      output.push("FizzBuzz");
    } else if (number % 3 === 0) {
      output.push("Fizz");
    } else if (number % 5 === 0) {
      output.push("Buzz");
    } else {
      output.push(number);
    }
  }
  console.log(output);
}

fizzBuzz();
