package classToUpper;

public class Test {

	public static void main(String[] args) {
		System.out.println("test");
		System.out.println("Int max is: " + Integer.MAX_VALUE + " ...min is: " + Integer.MIN_VALUE);
		System.out.println("Byte min is: " + Byte.MIN_VALUE);

		int max = Integer.MAX_VALUE;
		int step = getStepen(max);
		System.out.println("Stepen of " + max + "is :" + step);
		System.out.println(step + " in hex: " + Integer.toHexString(max));
		System.out.println(step + " in binary: " + Integer.toBinaryString(step));

	}

	private static int getStepen(int chislo) {
		// TODO Auto-generated method stub
		double stepen = 0;
		int res = 0;
		stepen = Math.round(Math.log(chislo) / Math.log(2));
		// System.out.println("__check: 2^31 is: "+Math.pow(2, 31));
		res = (int) stepen;

		return res;
	}
}
