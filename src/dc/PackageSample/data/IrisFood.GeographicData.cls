Class IrisFood.GeographicData Extends (%Persistent, %Populate)
{

Property latitude As %Library.Numeric(MAXVAL = -23.4, MINVAL = -23.5, SCALE = 5);

Index Indexlatitude On latitude;

Property longitude As %Library.Numeric(MAXVAL = -46.4, MINVAL = -46.7, SCALE = 5);

Index Indexlongitude On longitude;

Storage Default
{
<Data name="GeographicDataDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>latitude</Value>
</Value>
<Value name="3">
<Value>longitude</Value>
</Value>
</Data>
<DataLocation>^IrisFood.GeographicDataD</DataLocation>
<DefaultData>GeographicDataDefaultData</DefaultData>
<IdLocation>^IrisFood.GeographicDataD</IdLocation>
<IndexLocation>^IrisFood.GeographicDataI</IndexLocation>
<StreamLocation>^IrisFood.GeographicDataS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
