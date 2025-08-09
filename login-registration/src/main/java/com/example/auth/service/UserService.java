package com.example.auth.service;

import com.example.auth.entity.User;
import com.example.auth.web.dto.UserRegistrationRequest;

import java.util.Optional;

public interface UserService {
    void register(UserRegistrationRequest request);
    Optional<User> authenticate(String username, String passwordPlaintext);
    String getUsernameById(Long id);
}