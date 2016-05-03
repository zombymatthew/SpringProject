package com.zombymatthew.spring.web.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.validator.routines.EmailValidator;

public class MyEmailValidator implements ConstraintValidator<ValidEmail, String>
{
  private int min;

  @Override
  public void initialize (ValidEmail constraintAnnotation)
  {
    this.min = constraintAnnotation.min ();
    
  }

  @Override
  public boolean isValid (String email, ConstraintValidatorContext context)
  {
    if (email.length () < min)
      return false;
    if (!EmailValidator.getInstance ().isValid (email))
      return false;
    else
      return true;
  }

}
