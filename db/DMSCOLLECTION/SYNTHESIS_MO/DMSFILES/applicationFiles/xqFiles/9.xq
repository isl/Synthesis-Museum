let $doc := doc('___XXX___')
(:let $first_id:=doc('___XXX___')//ΤαυτότηταΑΠ/Εικόνα[1]/Σύνδεσμος/@sps_id
let $arch_id:=doc('___XXX___')//ΤεκμήριαΜνημείου/ΑρχειακήΑναφορά/Σύνδεσμος/@sps_id
let $arch_col:=collection('/db/DMSCOLLECTION/SYNTHESIS/Archive'):)
let $first_id:=$doc//ΤαυτότηταΑΠ/Εικόνα[1]/ΨηφιακήΕικόνα/Σύνδεσμος/@sps_id
let $arch_id:=$doc//ΑναφορέςΜνημείου/ΣύνδεσηΜεΨηφιακόΑντίγραφο/Σύνδεσμος/@sps_id
let $arch_col:=collection('/db/DMSCOLLECTION/SYNTHESIS/DigitalCopy')
return 
<Digital_Files>
{
for $i in $arch_id
where $i!=$first_id
return
<File>
{$i}
{$arch_col//admin[id=$i]/../ΨηφιακόΑρχείο/text()}
</File>
}
</Digital_Files>

