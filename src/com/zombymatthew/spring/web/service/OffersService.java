package com.zombymatthew.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zombymatthew.spring.web.dao.Offer;
import com.zombymatthew.spring.web.dao.OffersDAO;

@Service ("offersService")
public class OffersService
{
  private OffersDAO offersDao;
  
  @Autowired
  public void setOffersDao (OffersDAO offersDao)
  {
    this.offersDao = offersDao;
  }

  public List<Offer> getNamedOffer (String name)
  {
    return offersDao.getNamedOffers (name);
  }

  public List<Offer> getCurrent () 
  {
    return offersDao.getOffers ();
  }
  
  public boolean createOffer (Offer offer)
  {
    return offersDao.create (offer);
  }

  public void throwTestException ()
  {
    offersDao.getOffer (9999);
    
  }


}
