package com.eldorado.lyj.service;

import java.io.File;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.eldorado.lyj.dao.LyjDAOImpl;
import com.eldorado.lyj.service.LyjService;

@Service
public class MailServiceImpl implements MailService{

	private Log log = LogFactory.getLog(MailServiceImpl.class);
	// org.springframework.mail.javamail.JavaMailSender
	@Autowired
	private JavaMailSender javaMailSender;
	public void setJavaMailSender(JavaMailSender javaMailSender) {
	this.javaMailSender = javaMailSender;
	}
	@Override
	public boolean send(String subject, String text, String from, String to, String filePath) {
	// javax.mail.internet.MimeMessage
	MimeMessage message = javaMailSender.createMimeMessage();
	try {
	// org.springframework.mail.javamail.MimeMessageHelper
	MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
	helper.setSubject(subject);
	helper.setText(text, true);
	helper.setFrom(from);
	helper.setTo(to);
	// 첨부 파일 처리
	if (filePath != null) {
	File file = new File(filePath);
	if (file.exists()) {
	helper.addAttachment(file.getName(), new File(filePath));
	}
	}
	// 첨부 파일 처리 다른방법(이건 확인함)
	// FileSystemResource file = new FileSystemResource(new File("D:/load.gif"));
	// helper.addAttachment("load.gif", file);
	// 메일에 이미지 심어서 보낸는 방법(한글파일은 안됨)
	// String contents = text + "<br><br><img src=\"cid:emailPic.png \">";
	// helper.setText(contents, true);
	// FileSystemResource file = new FileSystemResource(new File("D:/emailPic.png"));
	// helper.addInline("emailPic.png", file);
	javaMailSender.send(message);
	return true;
	} catch (MessagingException e) {
	e.printStackTrace();
	}
	return false;
	}
	
	
	
	
	
	
}
