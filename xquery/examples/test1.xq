declare variable $input-context external;

<html>
<ul>&#xa;
{
	for $x in $input-context/bookstore/book
	return (<li>{data($x/author)}</li>, '&#xa;')
}
</ul>
</html>