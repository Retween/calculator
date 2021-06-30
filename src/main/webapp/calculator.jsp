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
        <bean:message key="label.x"/>
        <html:text property="x"/>

        <html:errors property="x"/>
    </p>
    <p>
        <bean:message key="label.y"/>
        <html:text property="y"/>
        <html:errors property="y"/>
    </p>
    <p>
        Option:
        <html:select property="operation">
            <html:option value="+"/>
            <html:option value="-"/>
            <html:option value="*"/>
            <html:option value="/"/>
        </html:select>
    </p>
    <html:submit value="calculate"/>
    <p>
        Result: <bean:write name="calculatorForm" property="result"/>
    </p>
</html:form>
</body>
</html>