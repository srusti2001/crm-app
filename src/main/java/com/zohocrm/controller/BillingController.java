package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.enities.Billing;
import com.zohocrm.enities.Contact;
import com.zohocrm.services.BillingService;
import com.zohocrm.services.ContactService;

@Controller
public class BillingController {
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private BillingService billingService;
	
	@RequestMapping("/generateBill")
	public String viewBillingPage(@RequestParam("id") long id, Model model) {
		Contact contact = contactService.findContactById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}
	
	@RequestMapping("/saveBill")
	public String billDetails(@ModelAttribute("billing") Billing billing, Model model) {
		
		billingService.saveBillingDetails(billing);
		List<Billing> billings = billingService.getAllList();
		model.addAttribute("billing", billings);
		return "list_billing";
	}

}
