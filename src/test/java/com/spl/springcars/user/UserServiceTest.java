package com.spl.springcars.user;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@SpringBootTest
class UserServiceTest {
    @Autowired
    private UserService userService;

    @MockBean
    private UserRepository userRepository;

    @MockBean
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Test
    void createUser() {
        User user = new User();
        assertTrue(userService.createUser(user));
        assertNotNull(user.getRoles());

        verify(userRepository, Mockito.times(1)).save(user);
    }

    @Test
    void createExistingUser() {
        User user = new User();
        user.setEmail("test@gmail.com");
        doReturn(Optional.of(new User())).when(userRepository).findByEmail("test@gmail.com");
        assertFalse(userService.createUser(user));

        verify(userRepository, Mockito.times(0)).save(user);
    }
}