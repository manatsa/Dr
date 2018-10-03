package com.mana.dr.controllers;

import com.mana.dr.entities.User;
import com.mana.dr.services.UserInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import java.util.Collections;
import java.util.List;

/**
 * Created by Java Developer Zone on 25-12-2017.
 * This class will check custom Authentication and return Authentication object if username and password is current
 *
 */
public class DRAuthentication implements AuthenticationProvider {
    @Autowired
    UserInterface userInterface;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();
        String role=authentication.getCredentials().toString();
        System.err.println("*************** role is "+role+" ***************");
        List<User> users=userInterface.getAllUsers();
        boolean logged=false;
            for(User user1:users)
            {
                if (username.equalsIgnoreCase(user1.getUserName().trim()) && password.equals(user1.getPassword().trim())) {           // replace your custom code here for custom authentication
                    logged=true;
                    return new UsernamePasswordAuthenticationToken
                            (username, password, Collections.emptyList());
                }
            }

        if(!logged){
            throw new BadCredentialsException("External system authentication failed");
            }

            return null;// new UsernamePasswordAuthenticationToken(username, password, Collections.emptyList());
    }
    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
}