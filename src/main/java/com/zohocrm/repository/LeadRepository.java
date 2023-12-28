package com.zohocrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrm.enities.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
