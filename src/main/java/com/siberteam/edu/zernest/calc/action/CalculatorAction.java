package com.siberteam.edu.zernest.calc.action;

import com.siberteam.edu.zernest.calc.form.CalculatorForm;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculatorAction extends DispatchAction {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) {
        CalculatorForm form1 = (CalculatorForm) form;
        switch (form1.getOperation()) {
            case "+":
                form1.setResult(Double.parseDouble(form1.getX()) + Double.parseDouble(form1.getY()));
                break;
            case "-":
                form1.setResult(Double.parseDouble(form1.getX()) - Double.parseDouble(form1.getY()));
                break;
            case "/":
                form1.setResult(Double.parseDouble(form1.getX()) / Double.parseDouble(form1.getY()));
                break;
            case "*":
                form1.setResult(Double.parseDouble(form1.getX()) * Double.parseDouble(form1.getY()));
                break;
        }
        return mapping.findForward("input");
    }
}
