//from http://www.programcreek.com/2012/12/leetcode-evaluate-reverse-polish-notation/
import java.io.IOException;
import java.util.Stack;


public class Test {
 
	public static void main(String[] args) throws IOException {
		String[] tokens = new String[] { "1", "2", "+", "3", "*" };
		int result = evalRPN(tokens);
		//set luck number -1886;
		if (result == -1886){
			System.out.println("The calc is return unexpected since it trys to pop a int in empty stack!");
		}else{
			System.out.println("The result is: " +evalRPN(tokens));
		}		
	}
 
	public static int evalRPN(String[] tokens) {
		int returnValue = 0;
		int a = 0;
		int b = 0;
		String operators = "+-*/";
 
		Stack<String> stack = new Stack<String>();
 
		for (String t : tokens) {
			if (!operators.contains(t)) {
				stack.push(t);
			} else {
				if (!stack.empty()){
					a = Integer.valueOf(stack.pop());
				}else{
					return -1886;
				}
				
				if (!stack.empty()){
					b = Integer.valueOf(stack.pop());
				}else{
					return -1886;
				}
				
				switch (t) {
				case "+":
					stack.push(String.valueOf(a + b));
					break;
				case "-":
					stack.push(String.valueOf(b - a));
					break;
				case "*":
					stack.push(String.valueOf(a * b));
					break;
				case "/":
					stack.push(String.valueOf(b / a));
					break;
				}
			}
		}
 
		returnValue = Integer.valueOf(stack.pop());
 
		return returnValue;
	}
}


//convert the above by using the following code which use the index of a string “+-*/”.
class OtherSolution {
	public int evalRPN(String[] tokens) {

	    int returnValue = 0;
	
	    String operators = "+-*/";
	
	    Stack<String> stack = new Stack<String>();
	
	    for(String t : tokens){
	        if(!operators.contains(t)){
	            stack.push(t);
	        }else{
	            int a = Integer.valueOf(stack.pop());
	            int b = Integer.valueOf(stack.pop());
	            int index = operators.indexOf(t);
	            switch(index){
	                case 0:
	                    stack.push(String.valueOf(a+b));
	                    break;
	                case 1:
	                    stack.push(String.valueOf(b-a));
	                    break;
	                case 2:
	                    stack.push(String.valueOf(a*b));
	                    break;
	                case 3:
	                    stack.push(String.valueOf(b/a));
	                    break;
	            }
	        }
	    }
	
	    returnValue = Integer.valueOf(stack.pop());
	
	    return returnValue;
	
	}
}
