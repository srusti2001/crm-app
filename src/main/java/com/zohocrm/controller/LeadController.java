package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.enities.Contact;
import com.zohocrm.enities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private ContactService contactService;
	
	@GetMapping("/viewCreateLeadPage")
	public String viewCreateLeadPage() {
		
		return "create_new_lead";
	}
	
	@PostMapping("/save")
	public String saveLead(@ModelAttribute("lead") Lead lead,ModelMap model) {
		leadService.saveOneLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
		
	}
	
	@PostMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id,Model model) {
		Lead lead =leadService.findLeadById(id);
		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contact.setSource(lead.getSource());
		
		contactService.saveContact(contact);
		leadService.deleteLeadById(id);
		
		List<Contact> contacts = contactService.getAllList();
		model.addAttribute("contact", contacts);
		return "list_contact";
	}
	
	@RequestMapping("/listAll")
	public String listAllLeads(Model model) {
		List<Lead> lead = leadService.getAllList();
		model.addAttribute("lead", lead);
		return "list_lead";
	}
	
	@RequestMapping("/leadinfo")
	public String leadInfo(@RequestParam("id")long id, Model model) {
		Lead lead = leadService.findLeadById(id);
		model.addAttribute("lead",lead);
		return "lead_info";
	}
	

}
