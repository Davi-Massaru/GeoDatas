Class IrisFood.Service.DeliverymanService Extends %RegisteredObject
{

Method GetTopNearest(latitude As %Float, longitude As %Float, Top As %Library.Integer = "", RestaurantId As %String = "") As %ListOfObjects
{
    Set:(Top="") Top = "ALL"
    Set result = ..stmTopNearestDeliveryman(latitude,longitude,Top, RestaurantId)
    Set DeliverymanList = ##class(%ListOfObjects).%New()
    While result.%Next(){
        Set deliveryman = ##Class(IrisFood.Model.Deliveryman).%New(result)
        Do DeliverymanList.Insert(deliveryman)
    }
    Return DeliverymanList
}

Method stmTopNearestDeliveryman(latitudePoint, longitudePoint, Tops = "ALL", RestaurantId = "") As %SQL.StatementResult
{

    Set myquery = 6
    Set myquery(1) = " SELECT TOP "_Tops_" "
    Set myquery(2) = " ID, Name, Restaurant, latitude, longitude, vehicleType, "
    Set myquery(3) = " Distance( "_latitudePoint_","_longitudePoint_" , latitude, longitude) As distance "
    Set myquery(4) = " FROM IrisFood.Deliveryman "

    Set myquery(5) = " "
    Set:(RestaurantId '= "") myquery(5) = " WHERE Restaurant = "_RestaurantId_" "

    Set myquery(6) = " ORDER BY distance "

    Set tStatement = ##class(%SQL.Statement).%New()
    Set qStatus = tStatement.%Prepare(.myquery)
    Set rset = tStatement.%Execute()
    Return rset
}

}
