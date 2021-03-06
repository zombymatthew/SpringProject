package com.zombymatthew.spring.web.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zombymatthew.spring.web.dao.User;
import com.zombymatthew.spring.web.service.UsersService;

@Controller
public class LoginController
{
  private UsersService usersService; 
  
  @Autowired
  public void setUsersService (UsersService usersService)
  {
    this.usersService = usersService;
  }

  @RequestMapping("/login")
  public String showLogin ()
  {
    return "login";
  }

  @RequestMapping("/loggedout")
  public String showLoggedOut ()
  {
    return "loggedout";
  }

  @RequestMapping("/newaccount")
  public String showNewAccount (Model model)
  {
    model.addAttribute ("user", new User ());
    return "newaccount";
  }

  @RequestMapping(value="/createaccount", method=RequestMethod.POST)
  public String createAccount (@Valid User user, BindingResult result)
  {
    if (result.hasErrors ())
    {
      return "newaccount";
    }
    
    user.setEnabled (true);
    user.setAuthority ("user");
    
    if (usersService.exists (user.getUsername ()))
    {
      result.rejectValue ("username", "DuplicateKey.user.username");
      return "newaccount";
    }
    
    else
    {
      usersService.create(user);
      return "accountcreated";
    }
  }
}
