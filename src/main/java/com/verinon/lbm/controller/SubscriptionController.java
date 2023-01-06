package com.verinon.lbm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubscriptionController {
    
    @RequestMapping("/show-listof-all-subscription")
    public String showListOfSubscription(ModelMap model)
    {
        // model.put("listofsubscription",services.showAllMembersData());
        return "showallsubscription";
    }
}
