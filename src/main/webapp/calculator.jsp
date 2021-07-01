<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Calculator</title>
</head>
<body>
<html:form action="/calculator.do">
    <p>
        <input type="number" name="x" step="0.01"
               value="<bean:write name="calculatorForm" property="x"/>"
               placeholder="<bean:message key="label.x"/>">
        <span style="color: red"><html:errors property="x"/></span>
    </p>
    <p>
        <input type="number" name="y" step="0.01"
               value="<bean:write name="calculatorForm" property="y"/>"
               placeholder="<bean:message key="label.y"/>">
        <span style="color: red"><html:errors property="y"/></span>
    </p>
    <p>
        Option: <html:select property="operation">
            <html:option value="+">Add</html:option>
            <html:option value="-">Subtract</html:option>
            <html:option value="*">Multiply</html:option>
            <html:option value="/">Divide</html:option>
        </html:select>
    </p>
    <html:submit value="Calculate"/>
    <p>
        Result: <bean:write name="calculatorForm" property="result"/>
    </p>
</html:form>
</body>
</html>