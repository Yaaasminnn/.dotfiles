// REPL.js file
// Equivalent of a .*rc file, but for JS
// loads all variables and methods etc

// all imports here
const repl = require('repl');

// load all variables here
const prompt = "\033[0;1m[\033[0;33;1mjs\033[0;1m] \033[0;33;1m-> \033[0m" // prompt: [js] -> 



const local = repl.start(prompt) // starts the repl


local.on('exit', () => { // what to do on exit
  console.log("exiting...")
  process.exit()
})
