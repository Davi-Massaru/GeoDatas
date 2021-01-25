Class IrisFood.Model.Deliveryman Extends %RegisteredObject
{

Property Id As %String;

Property Name As %String;

Property vehicleType As %String;

Property latitude As %Float;

Property longitude As %Float;

Property distance As %Float;

Property Restaurant As %String;

Method %OnNew(result As %SQL.StatementResult) As %Status
{
    Set ..Id = result.ID
    Set ..Name = result.Name
    Set ..vehicleType = result.vehicleType
    Set ..latitude = result.latitude
    Set ..longitude = result.longitude
    Set ..distance = result.distance
    Set ..Restaurant = result.Restaurant
    Return $$$OK
}

}
