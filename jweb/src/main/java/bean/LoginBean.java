package bean;

public class LoginBean {
	private String userid;
	private String passwd;
	
	final String _userid = "myuser";
	final String _passwd = "0000";
	
	//로그인 체크
	public boolean checkUser() {
		if(userid != null && userid.equals(_userid) 
				&& passwd.equals(_passwd) && passwd != null) {
			return true;
		}else {
			return false;
		}
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
