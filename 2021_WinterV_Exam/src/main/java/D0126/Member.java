package D0126;

public class Member {
	//접근제한자의 종류
	//public 어디서든 접근 가능
	//protected 같은 패키지 + 상속관계 접근 가능
	//default 같은 패키지 접근 가능
	//private 접근 불가 this(동일한 클래스내 메서드에서만) 키워드로 접근 가능
	
	public int age;
	private String name;
	
	public Member() {
		this.age = 0;
		this.name = null;
	}
	
	public int getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	
}
