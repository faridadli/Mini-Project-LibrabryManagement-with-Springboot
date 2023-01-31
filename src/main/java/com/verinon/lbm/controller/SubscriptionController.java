package com.verinon.lbm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.verinon.lbm.pojos.SubscriptionPojo;
import com.verinon.lbm.services.SubscriptionServices;

@Controller
public class SubscriptionController {

    @Autowired
    SubscriptionServices services;


    @RequestMapping("/show-listof-all-subscriptions")
    public String showListOfSubscription(ModelMap model)
    {
        model.put("listofsubscriptions", services.showAllSubscriptionsData());
        return "showallsubscriptions";
    }

    @GetMapping("/add-subscription")
    public String addSubscriptionsShowPage(ModelMap model)
    {
        model.addAttribute("subscription", new SubscriptionPojo(0, "Tier", 0.0, 0, "Accessibility"));
        return "addSubscription";
    }

    @PostMapping("/add-subscription")
    public String addSubscriptions(ModelMap model, SubscriptionPojo subscription)
    {
        services.addSubscription(subscription.getSubsc_tier(), subscription.getSubsc_fee(), subscription.getSubsc_limit(), subscription.getSubsc_accessibility());
        //bookRepository.save(book);
        return "redirect:show-listof-all-subscriptions";
    }

    @RequestMapping("/delete-subscription")
    public String deleteSubscriptioFromList(int id)
    {
        services.delSubscription(id);
        //bookRepository.deleteById(id);
        return "redirect:show-listof-all-books";
    }

    @PostMapping("/edit-subscription")
    public String editSubscriptionDetails(int id, @RequestParam String tier, @RequestParam double fee, @RequestParam int limit, @RequestParam String accessibility)
    {
        services.editSubscription(id,tier, fee, limit, accessibility);
        /*if(bookRepository.existsById(id))
        {
            services.editBook(id,bookname);
            bookPojo.setBook_name(bookname);
            bookRepository.save(bookPojo);
        }*/
        return "redirect:show-listof-all-subscriptions";
    }

    @GetMapping("/edit-subscription")
    public String editSubscriptionDetailsShowPage(ModelMap model)
    {
        return "editsubscription";
    }

    @GetMapping("/get-subscription-details")
    public String getSubscriptionDetailsShowPage(ModelMap model)
    {
        model.put("searchsubscription", services.showAllSubscriptionsData());
        //model.put("searchbook", bookRepository.findAll());
        return "subscriptionsdetails";
    }

    @GetMapping("/get-subscription-tracking-details")
    public String getSubscriptionTrackingDetailsShowPage(ModelMap model)
    {
        return "subscriptiontrackdetails";
    }

    @RequestMapping("/get-subscription-details-one")
    public String getSubscriptionDetails(ModelMap model, @RequestParam String tier)
    {
        model.put("clicksubscription", services.getSubscriptionDetails(tier));
        //model.put("clickbook",bookRepository.findByBook_name(book_name));
        {

            model.put("error","No Subjects are available");
        }
        return "getsubscriptiondetails";
    }


}
