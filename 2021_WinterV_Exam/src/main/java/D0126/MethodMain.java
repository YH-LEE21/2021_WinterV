package D0126;

public class MethodMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		M1 m1 = new M1();
		//메소드 호출부분
		m1.test1();
		m1.test2(17);
		
		String id = "admin";
		String pw = "1234";
		m1.test2(id, pw);
		
		System.out.println(m1.lotto());
		
		boolean result = m1.login(id, pw);
		System.out.println(result);
	}

}
