package gjavaweb.rest;
import java.util.*;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;


@ApplicationPath("/api") // gjavaweb/api는 rest api로 호출해서 사용
public class ApplicationConfig extends Application {
   
   @Override
   public Map<String, Object> getProperties() {
      Map<String, Object> properties = new HashMap<String, Object>();
      properties.put("jersey.config.server.provider.packages", "gjavaweb.rest"); // rest controller로 동작하도록 등록
      
      return properties;
   }
   
}