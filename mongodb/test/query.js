db.test.insert({a: 2, b: ["a", "b", "c"]})
db.test.insert({a: 3, b: ["a", "b"] })
db.test.insert({a: 9, b: ["a"] })

db.test.find({b: {$all: ["a"]}})
db.test.find({b: {$all: ["a", "c"]}})