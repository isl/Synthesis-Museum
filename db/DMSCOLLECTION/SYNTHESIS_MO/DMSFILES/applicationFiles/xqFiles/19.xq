let $map := document('/db/DMSCOLLECTION/SYNTHESIS/DMSFILES/applicationFiles/xmlFiles/maps.xml')//map[@id='___XXX___']
for $i in collection('/db/DMSCOLLECTION/SYNTHESIS/AP')
where $i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Lat>$map//minLat and $i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Lat<$map//maxLat
and $i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Long>$map//minLon and $i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Long<$map//maxLon
and $i//admin/lang='___XXX___'
return
<result type="AP" id="{$i//admin/id}">
{$i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Long}
{$i//ΤαυτότηταΑΠ/Τοποθεσία//Συντεταγμένες/Lat}
{$i//ΤαυτότηταΑΠ/ΚύριαΤρέχουσαΟνομασία}
{$i//ΤαυτότηταΑΠ/Κατηγορία}
{$i//ΤαυτότηταΑΠ/Περιγραφή}
<Εικόνα>{
let $arch_id:=$i//Οντότητα/ΔΑΠ/ΤαυτότηταΑΠ/Εικόνα/ΨηφιακήΕικόνα/Σύνδεσμος/@sps_id
let $arch_col:=collection('/db/DMSCOLLECTION/SYNTHESIS/DigitalCopy')
return $arch_col//admin[id=$arch_id]/../ΨηφιακόΑρχείο/text()
}</Εικόνα>
</result>
