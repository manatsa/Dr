package com.mana.dr.services;

import com.mana.dr.entities.Roles;
import com.mana.dr.interfaces.RoleInterface;
import com.mana.dr.repositories.RolesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


@Service
public class RoleService implements RoleInterface {

    @Autowired
    RolesRepository rolesRepository;

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Roles> getAllRoles() {

        return rolesRepository.findAll();
    }

    @Override
    public Roles getRoleByName(String rolez) {


       Roles roles= (Roles)em.createQuery("select r from "+Roles.class.getName()+" r where r.role=:rolename")
                .setParameter("rolename",rolez)
                .getSingleResult();;
       return roles;

    }
}
