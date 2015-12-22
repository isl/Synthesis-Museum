let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Martyries')/Οντότητα/ΜαρτυρίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Θέμα/text()
return <Τιμή tagname="Θέμα">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Martyries')/Οντότητα/ΜαρτυρίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Θέμα/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλα"/>
</Τιμή>
}

{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Martyries')/Οντότητα/ΜαρτυρίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Κατηγορία/text()
return <Τιμή tagname="Κατηγορία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Martyries')/Οντότητα/ΜαρτυρίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Κατηγορία/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλες"/>
</Τιμή>
}
</Τιμές>
