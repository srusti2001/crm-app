package com.zohocrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrm.enities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
