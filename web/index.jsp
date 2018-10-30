<%--
  Created by IntelliJ IDEA.
  User: Татьяна Яковлева
  Date: 23.10.2018
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>WebDevelopment</title>
</head>
<body>
<h1>Dear, User!</h1>
<form method="get" action="${pageContext.request.contextPath}/controller">
<div id="inputX" >Введите значение числа X:

    <p><label><input type="radio" class="radio" name="X" value="-4">
        <span class="radio-custom"></span>
        <span class="label">-4</span></label>

        <label><input type="radio" class="radio" name="X" value="-3">
            <span class="radio-custom"></span>
            <span class="label">-3</span></label>

        <label><input type="radio" class="radio" name="X" value="-2">
            <span class="radio-custom"></span>
            <span class="label">-2</span></label>


        <label><input type="radio" class="radio" name="X" value="-1">
            <span class="radio-custom"></span>
            <span class="label">-1</span></label></p>


    <p><label><input type="radio" class="radio" name="X" value="0">
        <span class="radio-custom"></span>
        <span class="label">0</span></label>


        <label><input type="radio" class="radio" name="X" value="1">
            <span class="radio-custom"></span>
            <span class="label">1</span></label>


        <label><input type="radio" class="radio" name="X" value="2">
            <span class="radio-custom"></span>
            <span class="label">2</span></label>


        <label><input type="radio" class="radio" name="X" value="3">
            <span class="radio-custom"></span>
            <span class="label">3</span></label></p>


    <label><input type="radio" class="radio" name="X" value="4">
        <span class="radio-custom"></span>
        <span class="label">4</span></label></p>

</div>


<div id="inputY" class="light entry">Введите значение числа Y:
    <label>
        <input type="text" name="Y" maxlength="5">
    </label></div>

    <div id="inputR" >Введите значение числа R:

        <p><label><input type="radio" class="radio" name="R" value="1">
            <span class="radio-custom"></span>
            <span class="label">1</span></label>

            <label><input type="radio" class="radio" name="R" value="2">
                <span class="radio-custom"></span>
                <span class="label">2</span></label>

            <label><input type="radio" class="radio" name="R" value="3">
                <span class="radio-custom"></span>
                <span class="label">3</span></label>


            <label><input type="radio" class="radio" name="R" value="4">
                <span class="radio-custom"></span>
                <span class="label">4</span></label>


        <p><label><input type="radio" class="radio" name="R" value="5">
            <span class="radio-custom"></span>
            <span class="label">5</span></label></p>



    </div>

        <div><p><input type="submit"></p></div></form>

</body>
</html>
