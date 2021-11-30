<#include 'base.ftl'>

<#macro title>
    <title>All Users</title>
    <link rel="shortcut icon" href="static/img/pancake.jpg" type="image/png">
</#macro>

<#macro content>
    <br>
    <h1>All Users</h1>
    <br>

    <form action="/allUsers" method="post" novalidate>
        <p class="lead" id="1" style="float: left; margin-right: 50px;">
            Search by nickname:<br>
            <input name="nickname" type="text"/><br>
        </p>

        <br>
        <p class="lead" style="margin-right: 1000px;">
            <input type="submit" value="Find">
        </p>
    </form>

    <br>

    <#if users??>
        <#if users?has_content>
            <#list users as user>
                <a href="/detailUser?id=${user.id}">
                    <div class="alert alert-dark" role="alert">
                        <table>
                            <tr>
                                <td><img alt="user_img" src="${user.avatar}" width="50" height="50" class="rounded-circle"></td>
                                <td><h3><strong>${user.nickname}</strong></h3></td>
                            </tr>
                        </table>
                    </div>
                </a>
            </#list>

        <#else>
            <p class="lead">No users!</p>
        </#if>
    </#if>
</#macro>
