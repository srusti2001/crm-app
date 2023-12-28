package com.zohocrm.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.enities.Billing;
import com.zohocrm.repository.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRepository billingRepo;

	@Override
	public void saveBillingDetails(Billing billing) {
		billingRepo.save(billing);

	}

	@Override
	public List<Billing> getAllList() {
		List<Billing> findAll = billingRepo.findAll();
		return findAll;
		
	}

	

}
