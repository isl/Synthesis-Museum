let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Keimena')/Οντότητα/ΚείμενοΟντότητα[admin/saved='yes'][admin/lang=$lang]/Τίτλος/text()
return <Τιμή tagname="Τίτλος">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Keimena')/Οντότητα/ΚείμενοΟντότητα[admin/saved='yes'][admin/lang=$lang]/Τίτλος/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλους"/>
</Τιμή>
}
</Τιμές>
