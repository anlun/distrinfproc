$ne                     // !=
$gt, $gte, $lt, $lte // >, >=, <, <=
{ $mod: [2, 1] }
{ $in : ["NoSQL", "Document Databases"] }
{ $nin: ["NoSQL", "Document Databases"] }
{ $all: ["NoSQL", "Document Databases"] }
{ $size: 2 } // for array
{ $exists: false }

// OR
{$or: [{ $reviewed: {$exists: true}, {$categories: {$size: 2}} }]}
$nor
$not

{ field.index.field: value }

db.collection.find({ $where: "this.a==1" })