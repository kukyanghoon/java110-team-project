package leadme.service;

import leadme.domain.Member;

public interface AuthService {
    Member getMember(String email, String password, String memberType);
}
