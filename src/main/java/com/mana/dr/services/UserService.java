package com.mana.dr.services;

import com.mana.dr.entities.User;
import com.mana.dr.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements  UserInterface {

    @Autowired
    private UserRepository userRepository;



    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).get();
    }

    @Override
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public User editUser(User user,Long id) {
        User olduser=userRepository.findById(id).get();
        olduser.setFirstName(user.getFirstName());
        olduser.setLastName(user.getLastName());
        olduser.setPassword(user.getPassword());
        olduser.setRoles(user.getRoles());
        olduser.setUserName(user.getUserName());

        return userRepository.save(olduser);
    }

    @Override
    public int deleteUser(Long id) {
        userRepository.deleteById(id);
        return 1;
    }


    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
