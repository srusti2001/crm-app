package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.enities.Contact;
import com.zohocrm.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactRepository contactRepo;

	@Override
	public void saveContact(Contact contact) {
		contactRepo.save(contact);

	}

	@Override
	public List<Contact> getAllList() {
		List<Contact> contact = contactRepo.findAll();
		
		return contact;
	}

	@Override
	public Contact findContactById(long id) {
		Optional<Contact> contacts = contactRepo.findById(id);
		Contact  contact= contacts.get();
		return contact;
	}

}
