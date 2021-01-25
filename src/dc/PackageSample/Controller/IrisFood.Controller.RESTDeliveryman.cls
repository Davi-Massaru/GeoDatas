Class IrisFood.Controller.RESTDeliveryman Extends %CSP.REST
{

ClassMethod GetDeliverymans(Lat, Lng) As %Status
{
    Set %response.ContentType="application/json"
    Set service = ##class(IrisFood.Service.DeliverymanService).%New()
    Set top = %request.Get("top")
    Set restaurantId = %request.Get("restaurantId")

    Set deliverymanList = service.GetTopNearest(Lat, Lng, top, restaurantId)

    Do ##class(%ZEN.Auxiliary.jsonProvider).%ObjectToJSON(deliverymanList)
    Return $$$OK
}

XData UrlMap
{
<Routes>
<Route Url="/:Lat/:Lng" Method="GET" Call="GetDeliverymans"  Cors="true"/>
</Routes>
}

}
