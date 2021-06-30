package com.siberteam.edu.zernest.calc.form;

import org.apache.struts.validator.ValidatorForm;

public class CalculatorForm extends ValidatorForm {
    String x = "0";
    String y = "0";
    String operation="+";
    int result;

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
