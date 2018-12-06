package leadme.service;

import java.io.IOException;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileService {
  String makePhotoFile(MultipartHttpServletRequest multi) throws IllegalStateException, IOException;
}
