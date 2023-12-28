package com.zohocrm.services;

import java.util.List;

import com.zohocrm.enities.Contact;

public interface ContactService {
	
	public void saveContact(Contact contact);

	public List<Contact> getAllList();

	public Contact findContactById(long id);

}
