package leadme.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.UUID;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import leadme.service.FileService;

@Service
public class FileServiceImpl implements FileService {

  @Override
  public String makePhotoFile(MultipartHttpServletRequest multi)
      throws IllegalStateException, IOException {

    String root = multi.getSession().getServletContext().getRealPath("/");
    String path = root+"resources/img/";

    String newFileName = "";

    File dir = new File(path);
    if(!dir.isDirectory()){
      dir.mkdir();
    }

    Iterator<String> files = multi.getFileNames();

    while(files.hasNext()){
      String uploadFile = files.next();

      MultipartFile mFile = multi.getFile(uploadFile);
      String fileName = mFile.getOriginalFilename();
      if(fileName.isEmpty()) {
        fileName = "default.png";

      }

      System.out.println("실제 파일 이름 : " +fileName);
      if(fileName.equals("default.png")) {
        newFileName = fileName;
      }else {
        newFileName = UUID.randomUUID().toString();
      }

      System.out.println("저장될 파일 이름 : " +newFileName);

      mFile.transferTo(new File(path+newFileName));
    }

    return newFileName;

  }







}