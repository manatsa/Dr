package com.mana.dr.error;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptController {

    @RequestMapping("/loginFailed")
    public String loginError(HttpServletRequest httpServletRequest)
    {
        String errorPage="error";
        int errorCode=(Integer) httpServletRequest.getAttribute("javax.servlet.error.status_code");
        System.err.println("Error Code :"+errorCode);
        switch (errorCode)
        {
            case 401:
            case 403:
                errorPage="errors/403";
                break;
            case 404:
                errorPage="errors/404";
                break;
            case 500:
                errorPage="errors/500";
                break;
            default:

                    break;
        }
        return errorPage;
    }
}
