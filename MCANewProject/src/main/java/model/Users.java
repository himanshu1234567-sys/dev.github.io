package model;

import java.io.Serializable;

public final class Users implements Serializable {

	private static final long serialVersionUID = 1L;
	private String uname;
	private String email;
	private String password;
	private String confirmpassword;
	
	
	public Users() {
		super();
	}


	public Users(String uname, String password) {
		super();
		this.uname = uname;
		this.password = password;
	}


	

	public Users(String uname, String email, String password, String confirmpassword) {
		super();
		this.uname = uname;
		this.email = email;
		this.password = password;
		this.confirmpassword = confirmpassword;
	}


	public String getUname() {
		return uname;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public String getConfirmpassword() {
		return confirmpassword;
	}


	

}
