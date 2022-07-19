package com.bean;

import java.io.Serializable;

public class Calculator2 implements Serializable{

	private static final long serialVersionUID = 12345L;
	
	//필드
	private double num1 = 0;
	private double num2 = 0;
	private String op = "";
	private double result = 0;
	
	//계산 메소드
	public double calculate() {
		if(op.equals("+")) {
			result = num1 + num2;
		}else if(op.equals("-")) {
			result = num1 - num2;
		}else if(op.equals("*")) {
			result = num1 * num2;
		}else if(op.equals("/")){
			result = num1 / num2;
		}
		return result;
	}

	public double getNum1() {
		return num1;
	}

	public void setNum1(double num1) {
		this.num1 = num1;
	}

	public double getNum2() {
		return num2;
	}

	public void setNum2(double num2) {
		this.num2 = num2;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public double getResult() {
		return result;
	}

	public void setResult(double result) {
		this.result = result;
	}
}
