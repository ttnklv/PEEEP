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
    <script src="lib.p5/p5.min.js"></script>
    <style>
        <%@include file="styles.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="canvas.js"%>
    </script>

    <script>
        function showError(container, errorMessage) {
            container.className = 'error';
            let msgElem = document.createElement('span');
            msgElem.className = "error-message";
            msgElem.innerHTML = errorMessage;
            container.appendChild(msgElem);
        }

        function resetError(container) {
            container.className = 'light entry';
            if (container.lastChild.className === "error-message") {
                container.removeChild(container.lastChild);
            }
        }

        function validate() {
            resetError(document.xyForm.Y.parentNode);
            let yLabel = document.getElementById("inpY");
            let result = yLabel.value.match(/^(\-|\+)?([0-9]+((\.|\,)[0-9]+)?)((E|e)\-?[0-9]+)?$/);

            if(result){
                if (yLabel.value < -3 || yLabel.value > 3){
                    showError(document.xyForm.Y.parentNode, 'значение Y должно принадлежать (-3,3)');
                    return false;
                }else{
                    resetError(document.xyForm.Y.parentNode);
                    return true;
                }
            }else {
                showError(document.xyForm.Y.parentNode, 'значение Y должно принадлежать (-3,3)');
                return false;
            }
        }
    </script>


</head>
<body>

<div id="header" class="head">
    <h1>Дашкова Мария / Яковлева Татьяна  | P3211 | 28104</h1>
    <h2>Определить попадание точки на координатную плоскость</h2>
</div>


<div class="light entry">Dear, User!</div>

<form method="get" action="${pageContext.request.contextPath}/controller" name="xyForm" onsubmit="return validate()">

    <div id="inputX" class="light entry">Введите значение числа X:

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


    <%--<div id="inputY" class="light entry">Введите значение числа Y:--%>
        <%--<label>--%>
            <%--<input type="text" name="Y" maxlength="5">--%>
        <%--</label></div>--%>

    <div id="inputY">Введите значение числа Y:
        <input type="text" maxlength="5"  id="inpY" name="Y" placeholder="(-3, 3) ">
    </div>

    <div id="inputR" class="light entry">Введите значение числа R:

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

    <div><p><input type="submit" ></p></div>
</form>

</body>
</html>
