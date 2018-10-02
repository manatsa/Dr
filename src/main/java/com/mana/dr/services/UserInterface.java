package com.mana.dr.services;

import com.mana.dr.entities.User;

import java.util.List;

public interface UserInterface {

    public List<User> getAllUsers();
    public User getUserById(Long id);
    public User saveUser(User user);
    public User editUser(User user,Long id);
    public int deleteUser(Long id);
}
