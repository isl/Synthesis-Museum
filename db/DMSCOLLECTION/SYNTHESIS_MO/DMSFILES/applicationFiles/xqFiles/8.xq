let $lll:=''
return <Filename>
{
let $arch_id:=doc('___XXX___')//ΤαυτότηταΑΠ/Εικόνα[1]/ΨηφιακήΕικόνα/Σύνδεσμος/@sps_id
let $arch_col:=collection('/db/DMSCOLLECTION/SYNTHESIS/DigitalCopy')
return $arch_col//admin[id=$arch_id]/../ΨηφιακόΑρχείο/text()
}
</Filename>
