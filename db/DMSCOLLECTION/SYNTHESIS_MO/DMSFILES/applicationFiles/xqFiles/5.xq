let $lang:='___XXX___'
let $lll:=''
return <Τιμές>
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΕίδοςΒιβλιογραφίας/text()
return <Τιμή tagname="ΕίδοςΒιβλιογραφίας">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΕίδοςΒιβλιογραφίας/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα/admin[saved='yes']/lang/text()
return <Τιμή tagname="lang">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα/admin[saved='yes']/lang/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Συγγραφέας/text()
return <Τιμή tagname="Συγγραφέας">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Συγγραφέας/text())
let $c := count($k)
order by $k collation '?lang=el-gr'
return  
if ($c > 0) then <Τιμή count ='{$c}' name='{distinct-values($k)}'/>
else ''
}
<Τιμή count="{count($rr)}" id="*" name="Όλους"/>
</Τιμή>
}
{
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΌνομαΠεριοδικού/text()
return <Τιμή tagname="ΌνομαΠεριοδικού">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΌνομαΠεριοδικού/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΌνομαΣειράς/text()
return <Τιμή tagname="ΌνομαΣειράς">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/ΌνομαΣειράς/text())
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
let $rr:=collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Τίτλος/text()
return <Τιμή tagname="Τίτλος">{
for $k in distinct-values(collection('/db/DMSCOLLECTION/SYNTHESIS/Bibliography')/Οντότητα/ΒιβλιογραφίαΟντότητα[admin/saved='yes'][admin/lang=$lang]/Τίτλος/text())
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
