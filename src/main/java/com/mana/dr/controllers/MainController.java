package com.mana.dr.controllers;

import com.mana.dr.entities.User;
import com.mana.dr.interfaces.UserInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    UserInterface userService;

    @RequestMapping({"/"})
    public String index(HttpServletRequest request, Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();


        User user=null;
        List<User> users=userService.getAllUsers();

        for(User user1:users)
        {

            if(user1.getUserName().trim().contentEquals(username.trim())){
                user=user1;
            }

        }

        if(user!=null)
        {
            request.getSession().setAttribute("user",user);
        }else{
            model.addAttribute("errormessage","Please enter correct login details!");
            return "user/login";
        }

        model.addAttribute("logging","You have successfully logged in!");
        return "index";
    }

    @RequestMapping("/error/loginError")
    public String geterror()
    {
        return "error/loginError";
    }
}
