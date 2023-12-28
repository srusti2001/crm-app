package com.zohocrm.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.enities.Contact;
import com.zohocrm.services.ContactService;

@Controller
public class ContactController {
	

	private ContactService contactService;
	
	public ContactController(ContactService contactService) {
		this.contactService=contactService;
	}
	
	@RequestMapping("/listall")
	public String listAllLeads(Model model) {
		List<Contact> contact = contactService.getAllList();
		model.addAttribute("contact", contact);
		return "list_contact";
	}
	
	@RequestMapping("/contactinfo")
	public String contactInfo(@RequestParam("id") long id, Model model) {
		Contact contact=contactService.findContactById(id);
		model.addAttribute("contact",contact);
		return "contact_info";
	}

}
