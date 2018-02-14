public class clsRESTCall {
    /* Declare protocol and request type type*/
    Http http = new Http();
    HttpRequest http_req = new HttpRequest();
    
    
    public string GetDetails(){
        http_req.setEndpoint('https://reqres.in/api/users?page=2');
        http_req.setMethod('GET');
        
        //Request with for get response.
        HttpResponse http_res = http.send(http_req);
        
        //Check the status code
        if(http_res.getStatusCode() == 200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(http_res.getBody());
            //List<Object> User_Data = (List<Object>) results.get('data');
            List<Object> User_Data = (List<Object>) results.values();
            
            List<String> str = new List<String>();
            for(Object o : User_Data){
                str.add(String.valueOf(o));
                System.debug(str[0]);
            }
            
/*            for(Object dt : User_Data{
				System.debug(dt);
            }*/
        }
	
        return 'A';
	}
}