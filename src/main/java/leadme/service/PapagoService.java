package leadme.service;

import java.util.Map;

public interface PapagoService {
  String TranslateService(String source, String target, String word) throws Exception;
  Map<String, Object> detectLangs(String data) throws Exception;

}
