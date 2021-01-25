Class IrisFood.Areas
{

Method SaveArea(NameArea, Latitude, Longitude, Radius) As %Status
{
    Set ^area(NameArea) = NameArea
    Set ^area(NameArea,"location") = $LB(Latitude,Longitude)
    Set ^area(NameArea,"Radius") = Radius
}

Method DeliteArea(NameArea) As %Status
{
    kill ^area(NameArea)
}

}
