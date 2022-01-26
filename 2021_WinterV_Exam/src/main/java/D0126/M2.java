package D0126;

import java.util.ArrayList;

public class M2 {
	
	public int sumArr(int[] arr) {
		int total =0;
		for(int i : arr) {
			total += i;
		}
		return total;
	}
	
	public int sumArr(ArrayList<Integer> list) {
		int total =0;
		for(int i : list) {
			total += i;
		}
		return total;
	}
}
