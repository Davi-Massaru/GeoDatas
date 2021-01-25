/// Description
Class User.SQLvar
{

ClassMethod Distance(lat1, lng1, lat2, lng2) As %Float [ SqlName = Distance, SqlProc ]
{
    Set radiusEarth = 6371
    Set lat1Radianos = (lat1 * $ZPI) / 180
    Set lng1Radianos = (lng1 * $ZPI) / 180
    Set lat2Radianos = (lat2 * $ZPI) / 180
    Set lng2Radianos = (lng2 * $ZPI) / 180
    //Haversine formula
    Set distance =  ($ZARCCOS((($ZCOS(lat1Radianos) * $ZCOS(lng1Radianos)) * ($ZCOS(lat2Radianos) * $ZCOS(lng2Radianos))) + ($ZCOS(lat1Radianos) * $ZSIN(lng1Radianos) * $ZCOS(lat2Radianos) * $ZSIN(lng2Radianos)) + ($ZSIN(lat1Radianos) * $ZSIN(lat2Radianos))) * radiusEarth)
    Return distance
}

ClassMethod LocalityIsWithin(lat, lon, pontLatitude, pontLongtude, radius) As %Boolean [ SqlName = LocalityIsWithin, SqlProc ]
{
    set distance = ..Distance(lat, lon, pontLatitude, pontLongtude)
    return (distance <= radius)
}

}
