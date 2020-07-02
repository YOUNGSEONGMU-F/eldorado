package com.eldorado.lyj.service;

import java.util.Map;

public interface MailService {

	public boolean send(String subject, String text, String from, String to, String filePath);

	
}
