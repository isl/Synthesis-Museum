for $i in document('DMSTags.xml')//tag[category='___XXX___' and type='output' and type='site']
order by $i/order
return $i/xpath/text()