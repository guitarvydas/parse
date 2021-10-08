function f (x, ...args) {
    console.log (x);
    console.log (args);
}
function f2 (...args) {
    console.log (args);
}

var obj = { of2 : function (...args) { console.log (args); } };

//f (1, 2, 3);
f2 (3, 4, 5);
obj.of2 (6, 7, 8);
