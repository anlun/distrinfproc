define function books-by-author($author) {
	for $b in doc("books.xml")/bib/book
	where some $ba in $b/author satisfies
		($ba/last=$author/last and $ba/first=$author/first)
	order by $b/title
	return $b/title
}
