Class IrisFood.Restaurant Extends (IrisFood.GeographicData, %Populate)
{

Property Name As %Library.String(POPSPEC = "Company()");

Property Type As %Library.String(VALUELIST = ",bakery,restaurant,snack_bar");

Storage Default
{
<Data name="RestaurantDefaultData">
<Subscript>"Restaurant"</Subscript>
<Value name="1">
<Value>Name</Value>
</Value>
<Value name="2">
<Value>Type</Value>
</Value>
</Data>
<DefaultData>RestaurantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
