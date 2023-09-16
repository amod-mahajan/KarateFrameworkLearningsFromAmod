//function printName(name) { return name}
//
//function printName1() { return "amod"}

function() {
    return {
    printName: function() { return "amod"},
    printName1: function(name) { return name},
    printName2: function(name) {
    let welcome = "Hello " + name
    return welcome
    }
    }
}