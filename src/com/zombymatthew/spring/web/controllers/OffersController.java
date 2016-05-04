package com.zombymatthew.spring.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zombymatthew.spring.web.dao.Offer;
import com.zombymatthew.spring.web.service.OffersService;

@Controller
public class OffersController
{
  private OffersService offersService;
  
  @Autowired
  public void setOffersService (OffersService offersService)
  {
    this.offersService = offersService;
  }

  @RequestMapping("/offers")
  public String showOffers (Model model)
  {
    List<Offer> offers = offersService.getCurrent ();

    model.addAttribute ("offers", offers);

    return "offers";
  }

  @RequestMapping(value="/namedoffer", method=RequestMethod.GET)
  public String showTest (Model model, @RequestParam("name")String name)
  {
    List<Offer> offers = offersService.getNamedOffer (name);

    model.addAttribute ("offers", offers);

    return "namedoffer";
  }

  @RequestMapping(value="/docreate", method=RequestMethod.POST)
  public String doCreate (Model model, @Valid Offer offer, BindingResult result)
  {
    if (result.hasErrors ())
      return "createoffer";
    
    offersService.createOffer (offer);
    return "offercreated";
  }

  @RequestMapping("/createoffer")
  public String createOffer (Model model)
  {
    model.addAttribute ("offer", new Offer ());

    return "createoffer";
  }
}
