package D0126;

import java.util.Random;

public class M1 {
	public M1() {}

	//1) 리턴되는 값(메서드 호출부분에 남기는 값)도 없고 매개값도 없다
	public void test1() {
		System.out.println("hello");
	}
	
	//2) 매개값 기본 타입하나
	//int age에 대입가능한 값을 입력받아야 한다.
	public void test2(int age) {
		if(age<20) {
			System.out.println("미성년자");
		}
		else {
			System.out.println("성인");
		}
	}
	
	//3) 매개값이 참조타입 두개
	public void test2(String id,String pw) {
		String systemId = "admin";
		String systemPw = "1234";
		
		if(id.equals(systemId) && pw.equals(systemPw)) {
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
		}
	}
	
	//4) 기본타입의 리턴값(1~45), 매개값은 없고
	public int lotto() {
		int result = (int)(Math.random()*45)+1;
		return result;
		// return
		// 1.메소드 종료
		// 2.종료후 return 뒤의 값을 남깁니다
	}
	
	//5) 기본타입 리턴값, 매개값 2개
	public boolean login(String id,String pw) {
		final String systemId= "admin";
		final String systemPw = "1234";
		boolean result = false;
		if(id.equals(systemId)&&pw.equals(systemPw)) {
			result = true;
			return result;
		}
		return result;
	}
}
