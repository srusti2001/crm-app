package com.zohocrm.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailServiceImpl implements Emailservice {
	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public void senSimpleMail(String to, String sub, String emailBody) {
		SimpleMailMessage mailMessage=new SimpleMailMessage();
		mailMessage.setTo(to);
		mailMessage.setSubject(sub);
		mailMessage.setText(emailBody);
		
		javaMailSender.send(mailMessage);

	}

}
