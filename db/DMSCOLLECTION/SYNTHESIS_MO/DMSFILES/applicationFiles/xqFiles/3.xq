let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα/admin[saved='yes']/lang/text()
return <Τιμή tagname="lang">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα/admin[saved='yes']/lang/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Έδρα/text()
return <Τιμή tagname="Έδρα">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Έδρα/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Επωνυμία/text()
return <Τιμή tagname="Επωνυμία">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Organization')/Οντότητα/ΟργανισμόςΟντότητα[admin/saved='yes'][admin/lang=$lang]/Επωνυμία/text())
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
