package com.spl.springcars.user;

import com.spl.springcars.configurations.PasswordEncoder;
import com.spl.springcars.enums.Role;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.HashSet;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public boolean createUser(User user) {
        if (userRepository.findByEmail(user.getEmail()).isPresent()) return false;
           // throw new IllegalStateException("User with email " + user.getEmail() + " is already exist");
        else {
            user.setActive(true);
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            user.getRoles().add(Role.ROLE_USER);
            userRepository.save(user);
            return true;
        }
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return userRepository.findByEmail(email).orElseThrow(()->
                new UsernameNotFoundException(String.format("User with email %s not found", email)));
    }



    public User getUserByPrincipal(Principal principal) {
        User user;
        if (principal!= null)
            user = userRepository.findByEmail(principal.getName()).orElse(new User());
        else user = new User();
        return user;
    }
}
