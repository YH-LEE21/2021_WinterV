package D0124;


public class Main {
	public static void main(String[] args) {
		A a = new A();
		a.x = 1;
		a.y = 2;
		
		B b = new B();
		b.greet();
		C c1 = b.returnC();
		System.out.println(c1.no);//777
		c1.play();
		
		C c = new C();
		c.no = 2;
		c.play();
		
		int db = D.b;
		D.hi();
		
	}
}
