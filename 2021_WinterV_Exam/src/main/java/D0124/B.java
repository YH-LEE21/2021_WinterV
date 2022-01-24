package D0124;

public class B {//기능 역할
	public void greet() {
		System.out.println("Hello"); // 메소드(멤버함수)만 가지는 클래스
	}
	
	public C returnC() {
		C c = new C();
		c.no =777;
		return c;
	}
}
