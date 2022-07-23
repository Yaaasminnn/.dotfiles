#!/bin/node
// REPL.js file
// Equivalent of a .*rc file, but for JS
// loads all variables and methods etc

// all imports here
const repl = require('repl')
const {exec} = require('child_process')
const {stderr} = require('process')



// load all variables here
const prompt = "\033[0;1m[\033[0;33;1mjs\033[0;1m] \033[0;33;1m-> \033[0m" // prompt: [js] -> 



// functions
const onExit = () => { // exits the system
  console.log("exiting...")
  process.exit()
}

// all the custom functions
const state = {
  exec(command) { // allows me to run shell commands in js
    exec(command, (err, stdout, stderr) => {
      if (err) {
        console.error(err)
      } else {
        console.log(stdout)
        console.log(stderr)
      }
    })
  },

 isEven(num){
    if (num%2 === 0) {console.log("even")}
    else {console.log("odd")}
 } 
}



const local = repl.start(prompt) // starts the repl

Object.assign(local.context, state)

local.on('exit', () => { // what to do on exit
  onExit()
})
