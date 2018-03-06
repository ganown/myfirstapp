package com.hotelcube.ws;

import javax.ws.rs.*;

@Path("buildinglist")
public class BuildingsResource{
   @GET
   @Produces("text/plain")
   public String getMessage() {
      return "List of Buildings, currently hard-coded";
   }
}
