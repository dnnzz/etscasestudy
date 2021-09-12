package com.etscasestudy.controller;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.etscasestudy.model.UserModel;
import com.etscasestudy.dao.UserDao;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserDao userDao;

    // Main page RequestMapping
    @RequestMapping(value="/",method= RequestMethod.GET)
    public String main(ModelMap model) {
        return "index";
    }

    // RequestMapping to new user form
    @RequestMapping("/newUsrForm")
    public String showform(Model m){
        m.addAttribute("command", new UserModel());
        return "newUsrForm";
    }
    // firing DAO's save method from url
    @RequestMapping(value="/save",method = RequestMethod.POST)
    public String save(@ModelAttribute("user") UserModel user){
        userDao.save(user);
        return "redirect:/allusers";//will redirect to allusers request mapping
    }

    // routing to list of all users
    @RequestMapping("/allusers")
    public String allUsers(Model model) {
        List<UserModel> list = userDao.getUsers();
        model.addAttribute("userlist",list);
        return "userList";
    }


    // firing dao's delete method via RequestMapping
    @RequestMapping(value="/deleteuser/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        userDao.delete(id);
        return "redirect:/allusers";//will redirect to allusers request mapping
    }
}
