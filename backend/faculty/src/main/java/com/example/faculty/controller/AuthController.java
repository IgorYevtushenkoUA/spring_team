package com.example.faculty.controller;

import com.example.faculty.config.security.JwtUtils;
import com.example.faculty.database.dto.user.JwtDto;
import com.example.faculty.database.dto.user.LoginDto;
import com.example.faculty.database.dto.user.UserCreateDto;
import com.example.faculty.database.entity.User;
import com.example.faculty.services.interfaces.IUserService;
import com.example.faculty.util.annotations.LogInfo;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@CrossOrigin(origins = "*", maxAge = 3600)
@Controller
@RequestMapping("/api/auth")
@LogInfo
public class AuthController {
    private final AuthenticationManager authenticationManager;
    private final IUserService service;
    private final PasswordEncoder encoder;
    private final JwtUtils jwtUtils;

    public AuthController(AuthenticationManager authenticationManager, IUserService service, PasswordEncoder encoder, JwtUtils jwtUtils) {
        this.authenticationManager = authenticationManager;
        this.service = service;
        this.encoder = encoder;
        this.jwtUtils = jwtUtils;
    }

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("loginRequest", new LoginDto());
        return "login";
    }

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@ModelAttribute LoginDto loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtUtils.generateJwtToken(authentication);
        User userDetails = (User) authentication.getPrincipal();
        return ResponseEntity.ok(
                new JwtDto(jwt,
                        userDetails.getId(),
                        userDetails.getUsername(),
                        userDetails.getEmail(),
                        userDetails.getRole()));
    }

    @PostMapping("/signup")
    public ResponseEntity<?> registerUser(@Valid @RequestBody UserCreateDto createDto) {
        //TODO check for errors while creating
        createDto.setPassword(encoder.encode(createDto.getPassword()));
        service.create(createDto);
        return ResponseEntity.ok("User registered successfully!");
    }


    @GetMapping("/signup")
    public String signupAuth() {
        return "signupStudent";
    }
}
