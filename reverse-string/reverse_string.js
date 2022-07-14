function reverse(string) {
  let newString = "";

  for (let i = 0; i < string.length; i++) {
    newString = string[i] + newString;
  }

  return newString;
}

console.log(reverse("hello"));
console.log(reverse("bye"));
