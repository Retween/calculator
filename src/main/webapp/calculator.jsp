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
        <html:select property="operation">
            <option selected disabled>choose option</option>
            <html:option value="+">add</html:option>
            <html:option value="-">subtract</html:option>
            <html:option value="*">multiply</html:option>
            <html:option value="/">divide</html:option>
        </html:select>
    </p>
    <html:submit value="calculate"/>
    <p>
        Result: <bean:write name="calculatorForm" property="result"/>
    </p>
</html:form>
</body>
</html>