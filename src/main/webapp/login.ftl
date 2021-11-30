<#include "base.ftl">
<#macro title>
    <title>SIGN UP</title>
    <link rel="shortcut icon" href="static/img/pancake.jpg" type="image/jpg">
</#macro>

<#macro content>
    <script>
        const form  = document.getElementById("form");
        let isValid = true;

        function validFunction() {
            return isValid;
        }

        function showResult(login) {
            const xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    if (this.responseText === "taken") {
                        document.getElementById("error").innerHTML = "The login is already used!";
                        isValid = false
                    } else {
                        document.getElementById("error").innerHTML = ""
                        document.getElementById("error").className = "error"
                        isValid = true
                    }
                }
            }
            xmlhttp.open("GET","/checkLogin?login=" + login, true);
            xmlhttp.send();
        }

        const nickname = document.getElementById("nickname");
        nickname.addEventListener("input", function (event) {
            if (nickname.validity.valid) {
                nickname.setCustomValidity("");
            } else {
                nickname.setCustomValidity("The nickname must contain at least 4 characters");
            }
        });

        const password = document.getElementById("password");
        password.addEventListener("input", function (event) {
            if (password.validity.valid) {
                password.setCustomValidity("");
            } else {
                password.setCustomValidity("The password must contain at least 4 characters");
            }
        });

        const email = document.getElementById("mail");
        email.addEventListener("input", function (event) {
            if (email.validity.typeMismatch) {
                email.setCustomValidity("Enter a email!");
            } else {
                email.setCustomValidity("");
            }
        });
    </script>

    <br>

    <h1>Registration</h1>
    <br>
    <div id="error" class="error active"></div>
    <br>
    <form action="/login" method="post" id="form" onsubmit="return validFunction()">
        <p class="lead">
            Enter a nickname:<br>
            <input name="nickname" type="text" id="nickname" required minlength="5"/><br>
        </p>

        <p class="lead">
            Enter a name:<br>
            <input name="first_name" type="text" required/><br>
        </p>

        <p class="lead">
            Enter a surname:<br>
            <input name="second_name" type="text" required/><br>
        </p>

        <p class="lead">
            Email:<br>
            <input name="email" type="email" id="mail" required/><br>
        </p>

        <p class="lead">
            Enter a login:<br>
            <input name="login" type="text" id="login" onkeyup="showResult(this.value)" required/><br>
        </p>

        <p class="lead">
            Enter a password:<br>
            <input name="password" type="password" required id="password" minlength="5"><br>
        </p>

        <br>
        <p class="lead">
            <input type="submit" value="sign up" id="button">
        </p>
        <br>
    </form>
</#macro>
</html>
