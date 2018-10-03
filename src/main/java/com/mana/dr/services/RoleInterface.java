package com.mana.dr.services;

import com.mana.dr.entities.Roles;

import javax.management.relation.Role;
import java.util.List;

public interface RoleInterface {
    public List<Roles> getAllRoles();
    public Roles getRoleByName(String role);
}
