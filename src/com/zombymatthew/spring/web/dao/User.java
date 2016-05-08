package com.zombymatthew.spring.web.dao;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.zombymatthew.spring.web.validation.ValidEmail;

public class User
{
  @NotBlank(message="Username cannot be blank.")
  @Size(min=3, max=80, message="Username must be between 3 and 80 characters in length.")
  @Pattern(regexp="^\\w{3,}$", message="Username can only consist of numbers, letters and ...")
  private String username;
  
  
  @NotBlank(message="Password cannot be blank.") 
  @Pattern(regexp="^\\S+$", message="Password must be at least 8 characters in length.")
  @Size(min=8, max=80, message="Password must be at least 8 characters in length.")
  private String password;
  
  @ValidEmail
  private String email;

  private boolean enabled = false;
  private String authority;

  public User (String username, String password, String email, boolean enabled, String authority)
  {
    this.username = username;
    this.password = password;
    this.enabled = enabled;
    this.authority = authority;
  }

  public User ()
  {
  }

  public String getUsername ()
  {
    return username;
  }

  public void setUsername (String username)
  {
    this.username = username;
  }

  public String getPassword ()
  {
    return password;
  }

  public void setPassword (String password)
  {
    this.password = password;
  }

  public String getEmail ()
  {
    return email;
  }

  public void setEmail (String email)
  {
    this.email = email;
  }


  public boolean isEnabled ()
  {
    return enabled;
  }

  public void setEnabled (boolean enabled)
  {
    this.enabled = enabled;
  }

  public String getAuthority ()
  {
    return authority;
  }

  public void setAuthority (String authority)
  {
    this.authority = authority;
  }

}
