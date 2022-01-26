package D0126;

public class MemberMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member m = null;
		m = new Member();
		
		m.age = 19;
		System.out.println(m.age);
		
		m.setName("루피");
		System.out.println(m.getName());
	}

}
