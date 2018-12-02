package leadme.service;

public interface KftcService {

    String requestToken();
    void realName(String token, String data);
}
