package src;

import ballerina.net.http;
import ballerina.lang.messages;
import ballerina.data.sql;
import ballerina.lang.jsons;

@http:configuration {basePath:"/Ads"}
service<http> syncAdService {
map props = {"jdbcUrl":"jdbc:mysql://localhost:3306/push_ads",
                "username":"root", "password":"lrllmlrp"};




    @http:GET {}
    @http:Path {value:"/sync"}
    resource sayHello (message m,string lat,string lng) {
        http:ClientConnector googleMapsCon= create http:ClientConnector("http://maps.googleapis.com");
        sql:ClientConnector sqlConnector=create sql:ClientConnector(props);
        message response = {};
        message tempMessage = {};
        message holdMsg = {};
        holdMsg = http:ClientConnector.get(googleMapsCon,"/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=false",tempMessage);
        json mapLocationList= messages:getJsonPayload(holdMsg);

        json area=(json)mapLocationList.results[0].address_components[2].long_name;
        string theArea= jsons:toString(area);

        json adImg ={};
        sql:Parameter[] params=[];
        datatable dt=sql:ClientConnector.select(sqlConnector,"SELECT imgUrl FROM ads WHERE locations_id_loc IN (SELECT id_loc FROM locations WHERE location='"+theArea+"')",params);
        adImg,_= <json>dt;

        messages:setJsonPayload(response, adImg);
        reply response;
    }

}

