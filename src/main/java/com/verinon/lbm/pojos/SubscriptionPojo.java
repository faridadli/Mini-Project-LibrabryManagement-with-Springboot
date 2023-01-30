package com.verinon.lbm.pojos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SubscriptionPojo {
    @Id
    @GeneratedValue
    int subsc_id;
    String subsc_tier;
    Double subsc_fee;
    int subsc_limit;
    String subsc_accessibility;
    
    public SubscriptionPojo(int subsc_id, String subsc_tier, Double subsc_fee, int subsc_limit,
            String subsc_accessibility) {
        this.subsc_id = subsc_id;
        this.subsc_tier = subsc_tier;
        this.subsc_fee = subsc_fee;
        this.subsc_limit = subsc_limit;
        this.subsc_accessibility = subsc_accessibility;
    }

    @Override
    public String toString() {
        return "SubscriptionPojo{" +
                "subsc_id=" + subsc_id +
                ", subsc_tier='" + subsc_tier + '\'' +
                ", subsc_fee=" + subsc_fee +
                ", subsc_limit=" + subsc_limit + 
                ", subsc_accessibility=" + subsc_accessibility +
                '}';
    }

    public int getSubsc_id() {
        return subsc_id;
    }

    public void setSubsc_id(int subsc_id) {
        this.subsc_id = subsc_id;
    }

    public String getSubsc_tier() {
        return subsc_tier;
    }

    public void setSubsc_tier(String subsc_tier) {
        this.subsc_tier = subsc_tier;
    }

    public Double getSubsc_fee() {
        return subsc_fee;
    }

    public void setSubsc_fee(Double subsc_fee) {
        this.subsc_fee = subsc_fee;
    }

    public int getSubsc_limit() {
        return subsc_limit;
    }

    public void setSubsc_limit(int subsc_limit) {
        this.subsc_limit = subsc_limit;
    }

    public String getSubsc_accessibility() {
        return subsc_accessibility;
    }

    public void setSubsc_accessibility(String subsc_accessibility) {
        this.subsc_accessibility = subsc_accessibility;
    }

    

    
}
