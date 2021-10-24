'use strict'

var ohm = require ('ohm-js');
var fs = require ('fs');


function main () {
    var args = process.argv;
    var sourceFileName = args[2];
    var source = fs.readFileSync (sourceFileName, 'utf-8');
    var grammarFileName = args[3];
    var grammar = fs.readFileSync (grammarFileName, 'utf-8');
    try {
	var parser = ohm.grammar (grammar);
    } catch (err) {
	console.error (`pf: fatal error in grammar ${grammarFileName}`);
    }
    try {
	var cst = parser.match (source);
	if (cst.succeeded ()) {
	    console.log (sourceFileName);
	} else {
	    // silence
	}
    } catch (err) {
    }
}

main ();
