<#include 'base.ftl'>
    <html lang="ru">

<#macro title>
    <title>Chat</title>
<#--    <script src="http://code.jquery.com/jquery-latest.min.js"></script>-->
<#--    <script>-->
<#--        $(document).on("click", "#ajax-button", function () {-->
<#--            $.get("/chat", function (responseText) {-->
<#--                $("#ajax-div").text(responseText);-->
<#--            });-->
<#--        });-->
<#--    </script>-->
    <link rel="shortcut icon" href="static/img/pancake.jpg" type="image/png">
</#macro>

<#macro content>
    <p class="lead"><a href="/detailUser?id=${opp}">Back</a></p>
    <br>

            <#if chat?has_content>
                <#list chat as message>
                    <table>
                        <tr>
                            <td><img alt="user_img" src="${message.avatar}" width="50" height="50" class="rounded-circle"></td>
                            <td><strong style="font-size:15px"><a href="/detailUser?id=${message.fromUserId}">${message.fromUserNickname}</a></strong></td>
                            <td><small class="text-muted" style="font-size:15px"><em>${message.date}</em></small></td>
                        </tr>
                    </table>
                    <div class="alert alert-dark" role="alert">
                        <div>${message.text}</div>
                    </div>
                </#list>
            <#else>
                <p class="lead">No Messages!</p>
            </#if>

                <form action="/chat?id=${opp}" method="post" novalidate>
                    <p class="lead">Enter a Message:</p>
                    <p class="lead">
                        <label>
                            <textarea name="text" placeholder="Message..." class="comment"></textarea>
                        </label><br>
                    </p>
                    <p class="lead"><input type="submit" value="Send"></p>
                    <br>
                </form>
</#macro>