package test.dwr;


public class DWR1Test {

	public String getString(){
		return "Hello World";
	}
	
	
	public String[] getNames(){
		String[] strings = new String[12];
		strings[0]="����";
		strings[1]="����";
		strings[2]="����";
		return strings;
	}
	
	
	public Persion[] getPersion(){
		Persion[] persions = new Persion[2];
		Persion persion = new Persion();
		persion.setAge("23");
		persion.setName("��������");
		
		Persion persion1 = new Persion();
		persion1.setAge("233");
		persion1.setName("caocao");
		
		persions[0]=persion;
		persions[1]=persion1;
		return persions;
	}
	
}
