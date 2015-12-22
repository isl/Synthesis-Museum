let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Κατηγορία/text()
return <Τιμή tagname="Κατηγορία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Κατηγορία/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλες"/>
</Τιμή>
}
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα/admin[saved='yes']/lang/text()
return <Τιμή tagname="lang">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα/admin[saved='yes']/lang/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλες"/>
</Τιμή>
}

{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ονομασία/text()
return <Τιμή tagname="Ονομασία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ονομασία/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return 
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλες"/>
</Τιμή>
}
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΓεωπολιτικήΙεραρχία/text()
return <Τιμή tagname="ΓεωπολιτικήΙεραρχία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Location')/Οντότητα/ΤόποςΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΓεωπολιτικήΙεραρχία/text())
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
