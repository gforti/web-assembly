let squarer, factorial

function loadWebAssembly(fileName) {
  return fetch(fileName)
    .then(response => response.arrayBuffer())
    .then(buffer => WebAssembly.compile(buffer))
    .then(module => new WebAssembly.Instance(module))
}

loadWebAssembly('factorial.wasm')
  .then(instance => {
    console.log(instance.exports)
    squarer = instance.exports._Z7squareri;
    factorial = instance.exports._Z9factoriall;
    console.log('Finished compiling!')
    console.log('squarer(9)', squarer(9))
    console.log('factorial(9)', factorial(9))
  })
