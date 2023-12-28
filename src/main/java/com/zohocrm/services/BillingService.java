package com.zohocrm.services;

import java.util.List;

import com.zohocrm.enities.Billing;

public interface BillingService {
	public void saveBillingDetails(Billing billing);

	

	public List<Billing> getAllList();

}
