for $i in document('/db/DMSCOLLECTION/SYNTHESIS/DMSFILES/Configuration.xml')//presentations
let $k := $i/xpaths
return
<Configuration>
{
for $j in $k//subtree
return 
<subtree xpath='{$j/@root}'/>
}
</Configuration>
