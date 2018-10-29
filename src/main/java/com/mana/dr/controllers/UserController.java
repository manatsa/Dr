package com.mana.dr.controllers;

import com.mana.dr.entities.Roles;
import com.mana.dr.entities.User;
import com.mana.dr.interfaces.RoleInterface;
import com.mana.dr.services.RoleService;
import com.mana.dr.interfaces.UserInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserInterface userService;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    RoleInterface roleService;

    @PersistenceContext
    EntityManager em;

    @RequestMapping(value = "/user/new.html")
    public String initCreate(Model model)
    {
        List<Roles> roles=roleService.getAllRoles();
        model.addAttribute("roles",roles);
        return "user/createUser";
    }

    @RequestMapping(value = "/user/create.html")
    public String newUser(HttpServletRequest request, Model model)
    {

            String firstName=request.getParameter("firstName");
            String lastName=request.getParameter("lastName");
            String userName=request.getParameter("userName");
            String password=request.getParameter("password");
            String roleName=request.getParameter("role");
            User user=new User();
            user.setUserName(userName);
            user.setPassword(passwordEncoder.encode(password));
            user.setLastName(lastName);
            user.setFirstName(firstName);
            user.setRole(roleName);
            userService.saveUser(user);

            List<User> users=userService.getAllUsers();
            model.addAttribute("users",users);
            model.addAttribute("done",true);
        return "user/viewUsers";
    }


    @RequestMapping(value = "/login")
    public String loginRequest(Model model)
    {
        model.addAttribute("show"," alert alert-dismissable alert-success text-center  ");
        model.addAttribute("message","You are now successfully logged in!");
        return "user/login";
    }


    @RequestMapping("/logout")
    public String logout(Model model, HttpServletRequest request){
        HttpSession httpSession=request.getSession();
        httpSession.setAttribute("user",null);
        httpSession.removeAttribute("user");
        httpSession.invalidate();
        model.addAttribute("show"," alert alert-dismissable alert-success text-center  ");
        model.addAttribute("message","Please not that you are now logged out!");
        return "redirect:/";
    }


    @RequestMapping({"/user/"})
    public String getAllusers(Model model)
    {
        List<User> users=userService.getAllUsers();
        model.addAttribute("users",users);
        return "user/viewUsers";
    }

    @RequestMapping({"/user/view/{id}"})
    public String getUser(Model model, @PathVariable Long id)
    {
        User user=userService.getUserById(id);
        model.addAttribute("user",user);
        return "user/viewUser";
    }

    @RequestMapping({"/user/edit/{id}"})
    public String editUser(Model model, @PathVariable Long id)
    {
        User user=userService.getUserById(id);
        List<Roles> roles=roleService.getAllRoles();
        model.addAttribute("roles",roles);
        model.addAttribute("user",user);

        return "user/editUser";
    }


    @RequestMapping(value = "/user/edit.html")
    public String editedUser(User user,HttpServletRequest request, Model model)
    {
            String userRole=request.getParameter("userRole");
            user.setRole(roleService.getRoleByName(userRole).getRole());

            userService.editUser(user,user.getId());

        List<User> users=userService.getAllUsers();
        model.addAttribute("users",users);
        model.addAttribute("show"," alert alert-dismissable alert-success text-center  ");
        model.addAttribute("message","User was edited successfully!!");
        return "user/viewUsers";
    }

    @RequestMapping("/user/reset/{id}")
    public  String passReset(Model model,@PathVariable Long id)
    {
        User user=userService.getUserById(id);
        model.addAttribute("user",user);
        return "user/resetPassword";
    }

    @RequestMapping("/user/doreset/{id}")
    public  String doReset(Model model,HttpServletRequest request, @PathVariable Long id)
    {
        try{
            User user=userService.getUserById(id);
            String pass = request.getParameter("password");
            user.setPassword(passwordEncoder.encode(pass));
            userService.editUser(user, user.getId());
        }catch (Exception e){
            e.printStackTrace();
        }

        List<User> users=userService.getAllUsers();
        model.addAttribute("users",users);
        model.addAttribute("message","Password reset was successful!");
        model.addAttribute("show"," alert alert-dismissable alert-success text-center");
        return "user/viewUsers";
    }

    @RequestMapping("/test")
    public String test()
    {
        return "jsfjsp";
    }


}
