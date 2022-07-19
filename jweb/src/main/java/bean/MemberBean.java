package bean;

import java.io.Serializable;

//VO(Value Object) 자료형 작성
public class MemberBean implements Serializable{

	private static final long serialVersionUID = 10000L;
	
	private int id = 20211101;
	private String name = "장그래";
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}
