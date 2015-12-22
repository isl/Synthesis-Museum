for $i in document('/db/DMSCOLLECTION/SYNTHESIS/DMSFILES/Configuration.xml')//presentations
let $k := $i/xpaths
return 
<Configuration>
    <presentations>
{$i/xsls} 
<xpaths root="/Οντότητα/ΔΑΠ" type="AP" headerDepth="1">
{for $j in $k//subtree[___XXX___]
return 
$j
}
</xpaths>
</presentations>
</Configuration>
