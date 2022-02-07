package boot;

import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
public class WebController {
    @Autowired

    @GetMapping(value = "/")
    public String koti() {
        return "index";
    }

    @GetMapping(value = "/home")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView("home");
        return mv;
    }

    @GetMapping("/admin")
    public String getAdmin() {
        return "admin";
    }

    @GetMapping("/user")
    public String getUser() {
        return "user";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) throws Exception {
        request.logout();
        return "redirect:/";
    }

}
