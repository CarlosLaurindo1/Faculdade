
public class Divisao implements IOperacao {
	private double num1;
	private double num2;

	// o m�todo get ser� com retorno
	public double getNum1() {
		return this.num1;
	}

	// O m�todo set ser� um m�todo sem retorno
	public void setNum1(double num1) {
		this.num1 = num1;
	}

	// o m�todo get ser� com retorno
	public double getNum2() {
		return this.num2;
	}

	// O m�todo set ser� um m�todo sem retorno
	public void setNum2(double num2) {
		this.num2 = num2;
	}

	public double calculo() {
		double divi = num1 / num2;
		return divi;
	}
}
