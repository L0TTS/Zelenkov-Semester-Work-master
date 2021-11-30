<#include 'base.ftl'>

<#macro title>
<title>User Account</title>
<link rel="shortcut icon" href="static/img/pancake.jpg" type="image/png">
</#macro>

<#macro content>
    <br>
    <p class="lead"><a href="/allUsers">Back</a></p>

<#if detailUser?has_content>
    <br>
    <h1>User page</h1>
    <br>
    <table>
        <tr>
            <td><img alt="user_img" src="${detailUser.avatar}" width="150" height="150" class="rounded-circle"></td>
            <td>
                <table>
                    <tr>
                        <td>
                            <h2>
                                <strong>${detailUser.nickname}</strong>
                            </h2>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <h3>
                                <em>${detailUser.firstName}  ${detailUser.secondName}</em>
                            </h3>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br>
    <p class="lead">Count of Recipes: ${count}</p>
    <p class="lead">Email: ${detailUser.email}</p>
    <br>
    <small class="text-muted" style="font-size:20px"><a href="/chat?id=${detailUser.id}">Write</a></small>
    <br>
    <br>
<#else>
    <br>
    <p class="lead"><em>Something went wrong(</em></p>
    <br>
</#if>

</#macro>
