function printHelloWithButton() {
  var btn = document.querySelector("input");

  function printHello() {
    console.log("Hello world");
  }

  btn.addEventListener("click", printHello);
}

window.addEventListener("load", printHelloWithButton);
