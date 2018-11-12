package leadme.service;

import leadme.domain.Member;

public interface AuthService2 {
    Member getMember(String email, String password, String memberType);
}
