declare function local:minPrice($p as xs:decimal?,$d as xs:decimal?)
AS xs:decimal?
{
	let $disc := ($p * $d) div 100
	return ($p - $disc)
}
