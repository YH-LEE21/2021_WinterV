package D0126;

public class User {
	private String name;//정보은닉
	private int age;//정보은닉
	
	//setter 필드값 변경
	//getter 필드값 읽기
	
	//캡슐화
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
