package D0126;

import java.util.ArrayList;

public class MethodMain2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			M2 m2 = new M2();
			int[] arr = {7,9,11};
			int total = m2.sumArr(arr);
			System.out.println(total);
			
			ArrayList<Integer> list = new ArrayList<Integer>();
			list.add(3);
			list.add(1);
			list.add(7);
			int total2 = m2.sumArr(list);
			System.out.println(total2);
			
	}

}
