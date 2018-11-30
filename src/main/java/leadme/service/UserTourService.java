package leadme.service;

import java.io.IOException;
import java.util.List;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import leadme.domain.TourReq;

public interface UserTourService {
  
  List<TourReq> goneTourList(String data) throws JsonParseException, JsonMappingException, IOException ;
  List<TourReq> comingTourList(String data) throws JsonParseException, JsonMappingException, IOException;
  List<TourReq> cancelTourList(String data) throws JsonParseException, JsonMappingException, IOException;
}
