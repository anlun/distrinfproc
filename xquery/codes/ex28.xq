for $b in doc("books.xml")/bib/book
return books-by-author($b)