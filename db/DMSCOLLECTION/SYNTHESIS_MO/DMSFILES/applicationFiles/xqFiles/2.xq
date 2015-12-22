let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ιδιότητα/text()
return <Τιμή tagname="Ιδιότητα">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ιδιότητα/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΚοινωνικήΟμάδα/text()
return <Τιμή tagname="ΚοινωνικήΟμάδα">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΚοινωνικήΟμάδα/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα/admin[saved='yes']/lang/text()
return <Τιμή tagname="lang">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα/admin[saved='yes']/lang/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ρόλος/text()
return <Τιμή tagname="Ρόλος">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Person')/Οντότητα/ΠρόσωποΟντότητα[admin/saved='yes'][admin/lang=$lang]/Ρόλος/text())
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
