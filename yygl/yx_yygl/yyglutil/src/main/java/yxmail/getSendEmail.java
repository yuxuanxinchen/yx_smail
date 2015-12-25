package yxmail;

import java.net.URLDecoder;

import yxmail.MailSenderInfo;
import yxmail.SimpleMailSender;

public class getSendEmail {

	private static String MailServerHost = "smtp.163.com";
	private static String MailServerPort = "25";
	private static String userName = "xuan121000";
	private static String userPassword = "<121000>";
	private static String FromAddress = "xuan121000@163.com";
	private static String ToAddress = "466682881@qq.com";
	private static String Subject = "Hello World"; //邮件主题
	private static String emailBody = "付出不亚于任何的努力";
	private static Boolean isExceptionInfo = false;
	
	
	public static Boolean sendEileToRemote(){
		try {
			 // 设置邮件服务器信息
			  MailSenderInfo mailInfo = new MailSenderInfo();
			  mailInfo.setMailServerHost(MailServerHost);
			  mailInfo.setMailServerPort(MailServerPort);
			  mailInfo.setValidate(true);
			  mailInfo.setUserName(userName);// 邮箱用户名
			  mailInfo.setPassword(userPassword); // 邮箱密码
			  mailInfo.setFromAddress(FromAddress); // 发件人邮箱
			  mailInfo.setToAddress(ToAddress); // 收件人邮箱
			  mailInfo.setSubject(Subject); // 邮件标题
//			  StringBuffer buffer = new StringBuffer();  // 邮件内容
			  mailInfo.setContent(emailBody);
			  SimpleMailSender sms = new SimpleMailSender();// 发送邮件
			  sms.sendTextMail(mailInfo);// 发送文体格式
			  SimpleMailSender.sendHtmlMail(mailInfo); // 发送html格式
			  return true;
		} catch (Exception e) {
			if(isExceptionInfo){
				e.printStackTrace();
			}
			return false;
		}
	}


	public static void setMailServerHost(String mailServerHost) {
		MailServerHost = mailServerHost;
	}
	public static void setMailServerPort(String mailServerPort) {
		MailServerPort = mailServerPort;
	}
	public static void setUserName(String userName) {
		getSendEmail.userName = userName;
	}
	public static void setUserPassword(String userPassword) {
		getSendEmail.userPassword = userPassword;
	}
	public static void setFromAddress(String fromAddress) {
		FromAddress = fromAddress;
	}
	public static void setToAddress(String toAddress) {
		ToAddress = toAddress;
	}
	public static void setSubject(String subject) {
		Subject = subject;
	}
	public static void setEmailBody(String emailBody) {
		getSendEmail.emailBody = emailBody;
	}
	public static void setIsExceptionInfo(Boolean isExceptionInfo) {
		getSendEmail.isExceptionInfo = isExceptionInfo;
	}
	public static Boolean getIsExceptionInfo() {
		return isExceptionInfo;
	}
	
}
