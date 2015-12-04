

public class TestInnerClasses {
	private String string = "privateString";
	private static String staticString = "privateStaticString";

	public static void main(String[] args) {
		TestInnerClasses.NestedClass.printFromNEsted();
		
		TestInnerClasses.InnerClass innerClass = new TestInnerClasses().new InnerClass();
		innerClass.printFromInner();
		
	}

	class InnerClass {
		public void printFromInner() {
			System.out.println("inner");	
			System.out.println(string);
			System.out.println(staticString);
			System.out.println("inner");	
		}
	}
	
	static class NestedClass{
		public static void printFromNEsted(){
			System.out.println(staticString);
		}
	}
}
