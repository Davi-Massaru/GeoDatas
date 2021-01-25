/// Description
Class IrisFood.Deliveryman Extends (IrisFood.GeographicData, %Populate)
{

Property Name As %Library.String(POPSPEC = "Name()");

Property vehicleType As %Library.String(VALUELIST = ",bicycle,motorcycle");

Property Restaurant As IrisFood.Restaurant;

Storage Default
{
<Data name="DeliverymanDefaultData">
<Subscript>"Deliveryman"</Subscript>
<Value name="1">
<Value>Name</Value>
</Value>
<Value name="2">
<Value>vehicleType</Value>
</Value>
<Value name="3">
<Value>Restaurant</Value>
</Value>
</Data>
<DefaultData>DeliverymanDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
