let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes']/ΑναλυτικήΤεκμηρίωση/ΣυσχετίσειςΜνημείου/Συσχέτιση/Περιγραφή/text()
return <Τιμή tagname="Συσχέτιση">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes']/ΑναλυτικήΤεκμηρίωση/ΣυσχετίσειςΜνημείου/Συσχέτιση/Περιγραφή/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes'][admin/lang=$lang]/ΤαυτότηταΑΠ/ΚύριαΤρέχουσαΟνομασία/text()
return <Τιμή tagname="ΚύριαΤρέχουσαΟνομασία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes'][admin/lang=$lang]/ΤαυτότηταΑΠ/ΚύριαΤρέχουσαΟνομασία/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes'][admin/lang=$lang]/ΤαυτότηταΑΠ/Κατηγορία/text()
return <Τιμή tagname="Κατηγορία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/AP')/Οντότητα/ΔΑΠ[admin/saved='yes'][admin/lang=$lang]/ΤαυτότηταΑΠ/Κατηγορία/text())
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