package com.mana.dr.controllers.user;

import com.mana.dr.entities.Roles;
import com.mana.dr.entities.User;
import com.mana.dr.services.UserInterface;
import com.mana.dr.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserInterface userService;

    @RequestMapping(value = "/user/new.html")
    public String initCreate()
    {
        return "user/createUser";
    }

    @RequestMapping(value = "/user/create.html")
    public String newUser(HttpServletRequest request, Model model)
    {
        try{
            String firstName=request.getParameter("firstName");
            String lastName=request.getParameter("lastName");
            String userName=request.getParameter("userName");
            String password=request.getParameter("password");
            String rolename=request.getParameter("role");
            User user=new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setLastName(lastName);
            user.setFirstName(firstName);
            Roles role=new Roles();
            role.setRole(rolename);
            user.setRole(role);
            user.setCreateDate(new Date());
            user.setModifyDate(new Date());
            user.setCreator("system");
            userService.saveUser(user);
        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("error",e.getMessage());
            StringWriter errors = new StringWriter();
            e.printStackTrace(new PrintWriter(errors));
            model.addAttribute("exception",errors.toString());
            return "errors/error";
        }

        return "user/createUser";
    }


    @RequestMapping(value = "/login")
    public String loginRequest()
    {
        return "user/login";
    }


    @RequestMapping("/logout.html")
    public String logout(Model model, HttpServletRequest request){
        HttpSession httpSession=request.getSession();
        httpSession.setAttribute("user",null);
        httpSession.removeAttribute("user");
        httpSession.invalidate();
        model.addAttribute("logging","You have successfully logged out!");
        return "redirect:/";
    }


    @RequestMapping({"/user/"})
    public String getAllusers(Model model)
    {
        List<User> users=userService.getAllUsers();
        model.addAttribute("users",users);
        return "users/viewUsers";
    }


}
