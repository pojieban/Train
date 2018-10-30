package com.train.bean;

public class User {

	private String uname;
	private String phone_Number;
	private String password;
	private java.util.Date register_Time;
	private String mailbox;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPhoneNumber() {
		return phone_Number;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phone_Number = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public java.util.Date getRegiserTime() {
		return register_Time;
	}
	public void setRegiserTime(java.util.Date regiserTime) {
		this.register_Time = regiserTime;
	}
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	@Override
	public String toString() {
		return "User [uname=" + uname + ", phoneNumber=" + phone_Number + ", password=" + password + ", regiserTime="
				+ register_Time + ", mailbox=" + mailbox + "]";
	}
	
	
}
