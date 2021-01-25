Class IrisFood.Controller.Dispath Extends %CSP.REST
{

ClassMethod Ping() As %Status
{
    Return $$$OK
}

ClassMethod PingPost() As %Status
{
    Set %response.ContentType="application/json"
    W (##class(%DynamicAbstractObject).%FromJSON(%request.Content.Read())).%ToJSON()
    Return $$$OK
}

XData UrlMap
{
<Routes>

<Map Prefix="/Deliveryman*" Forward="IrisFood.Controller.RESTDeliveryman"/>

<Route Url="/ping/" Method="POST" Call="PingPost"  Cors="true"/>
<Route Url="/ping/" Method="GET" Call="Ping"  Cors="true"/>

</Routes>
}

}
