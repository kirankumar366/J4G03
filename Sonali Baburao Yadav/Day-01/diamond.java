package myproject;

public class diamond {

	public static void main(String[] args) {
		int spaces =50;
		int stars =1,i;
		
		for(i=1; i<=21;i++) {
			 for(int j=0;j<spaces;j++)
				 System.out.print(" ");
			 for(int j=0;j<stars; j++) 
				 System.out.print("*");
			     System.out.println();
			 if(i<=10) {
				  spaces -=1;
				  stars +=2;
			 }
			 else {
				 spaces += 1;
				 stars -=2;
			 }
		}

	}


}