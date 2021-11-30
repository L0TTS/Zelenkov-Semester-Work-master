<#include 'base.ftl'>

<#macro title>
<title>Authorization</title>
<link rel="shortcut icon" href="static/img/pancake.jpg" type="image/jpg">
</#macro>

<#macro content>
<br>

<h1>Authorization</h1>

<br>

<form action="/signIn" method="post" novalidate>
    <p class="lead">
        Enter a login:<br>
        <input name="login" type="text"/><br>
    </p>

    <p class="lead">
        Enter a password:<br>
        <input name="password" type="password"><br>
    </p>

    <p class="lead">
        <input type="submit" value="log in">
    </p>

    <br>
</form>
    <#if err?has_content>
        <div class="alert alert-danger" role="alert">
            ${err}
        </div>
    </#if>

</#macro>
