<#include 'base.ftl'>

<#macro title>
<title>Personal account</title>
<link rel="shortcut icon" href="static/img/pancake.jpg" type="image/jpg">
</#macro>

<#macro content>
<br>
<h1>Your personal account</h1>
<br>
<table>
    <tr>
        <td><img alt="user_img" src="${user.avatar}" width="150" height="150" class="rounded-circle"></td>
        <td>
            <table>
                <tr>
                    <td>
                        <h2>
                            <strong>${user.nickname}</strong>
                        </h2>
                    </td>

                </tr>

                <tr>
                    <td>
                        <h3>
                            <em>${user.firstName}  ${user.secondName}</em>
                        </h3>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<form action="/cabinet" method="post" novalidate enctype="multipart/form-data">
    <br>
    <p style="font-size:25px">
        Change avatar
    </p>

    <p class="lead">
        <input name="avatar" type="file">
    </p>

    <p class="lead">
        <input type="submit" value="Change">
    </p>
</form>

<br>
<table>
    <tr>
        <td><p class="lead">Email: ${user.email}</p></td>
        <td><p class="lead">ID: ${user.id}</p></td>
    </tr>
    <tr>
        <td><p class="lead"><a href="/createRecipe">Add Recipe</a></p></td>
        <td><p class="lead"><a href="/myRecipes">My Recipes</a></p></td>
    </tr>
</table>
<br>
    <tr>
        <td><p class="lead"><a href="/logout">LOG OUT</a></p></td>
        <td><p class="lead"><a href="/deleteUser">DELETE ACCOUNT</a></p></td>
    </tr>
<br>

</#macro>
