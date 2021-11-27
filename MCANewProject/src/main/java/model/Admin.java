package model;

public final class Admin {
	private String uname;
	private String password;
	
	
	public Admin(String uname, String password) {
		super();
		this.uname = uname;
		this.password = password;
	}
	public String getUname() {
		return uname;
	}
	public String getPassword() {
		return password;
	}
	

}
