public class test {
	public static void main(String[] args){
		System.out.println(test.myMethod(50));
		System.out.println(test.caculateProbability(50));

	}
	
	public static double caculateProbability(int n){
		double x = 1; 
	 
		for(int i=0; i<n; i++){
			x *=  (365.0-i)/365.0;
		}
	 
		double pro = Math.round((1-x) * 100);
		return pro/100;
	}
	
	public static double myMethod(int n){
		double ns = 1;
		for(int i = 0; i<n; i++ ){
			ns *= (365.0-i)/365.0;
		}
		return (1 - ns)*100;
	}
}