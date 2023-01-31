package com.verinon.lbm.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.verinon.lbm.pojos.SubscriptionPojo;

@Service
public class SubscriptionServices {
    static List<SubscriptionPojo> listOfSubscriptions = new ArrayList<>();
    static int id = 3;
    static {
        // id=4;
        listOfSubscriptions.add(new SubscriptionPojo(1, "Free", 0.0, 3, "Limited access to certain books"));
        listOfSubscriptions.add(new SubscriptionPojo(2, "Premium", 20.0, 10, "Can access to any books"));
    }

    public List<SubscriptionPojo> showAllSubscriptionsData() {
        System.out.println("listOfSubscriptions" + listOfSubscriptions);
        return listOfSubscriptions;
    }

    public List<SubscriptionPojo> addSubscription(String tier, double fee, int limit, String accessibility) {
        listOfSubscriptions.add(new SubscriptionPojo(id++, tier, fee, limit, accessibility));

        return listOfSubscriptions;
    }

    public void delSubscription(int id) {
        Iterator it = listOfSubscriptions.iterator();
        while (it.hasNext()) {
            SubscriptionPojo bid = (SubscriptionPojo) it.next();
            if (bid.getSubsc_id() == id) {
                it.remove();
            }
        }
    }

    public void editSubscription(int id, String tier, double fee, int limit, String accessibility) {
        Iterator it = listOfSubscriptions.iterator();

        while (it.hasNext()) {
            SubscriptionPojo bid = (SubscriptionPojo) it.next();
            if (bid.getSubsc_id() == id) {
                bid.setSubsc_tier(tier);
                bid.setSubsc_fee(null);
                bid.setSubsc_limit(limit);
                bid.setSubsc_accessibility(accessibility);
            }
        }
    }

    public SubscriptionPojo showEditSubscription(int id) {
        Iterator it = listOfSubscriptions.iterator();

        while (it.hasNext()) {
            SubscriptionPojo mysubcription = (SubscriptionPojo) it.next();
            if (mysubcription.getSubsc_id() == id) {
                return mysubcription;
            }
        }
        return null;
    }

    public SubscriptionPojo getSubscriptionDetails(String tier) {
        Iterator it = listOfSubscriptions.iterator();

        while (it.hasNext()) {
            SubscriptionPojo mysubsc = (SubscriptionPojo) it.next();
            if ((mysubsc.getSubsc_tier()).equalsIgnoreCase(tier)) {
                return mysubsc;
            }
        }
        return null;
    }
}
