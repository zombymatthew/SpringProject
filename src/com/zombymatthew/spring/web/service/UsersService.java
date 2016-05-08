package com.zombymatthew.spring.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zombymatthew.spring.web.dao.User;
import com.zombymatthew.spring.web.dao.UsersDAO;

@Service
public class UsersService
{
  private UsersDAO usersDao;
  
  @Autowired
  public void setUsersDao (UsersDAO usersDao)
  {
    this.usersDao = usersDao;
  }

  
  public boolean create (User user)
  {
    return usersDao.create (user);
  }


  public boolean exists (String username)
  {
    
    return usersDao.exists (username);
  }

}
