
public class Divisao implements IOperacao {
	private double num1;
	private double num2;

	// o método get será com retorno
	public double getNum1() {
		return this.num1;
	}

	// O método set será um método sem retorno
	public void setNum1(double num1) {
		this.num1 = num1;
	}

	// o método get será com retorno
	public double getNum2() {
		return this.num2;
	}

	// O método set será um método sem retorno
	public void setNum2(double num2) {
		this.num2 = num2;
	}

	public double calculo() {
		double divi = num1 / num2;
		return divi;
	}
}
