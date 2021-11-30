<#include 'base.ftl'>

<#macro title>
<title>Add Recipe</title>
<link rel="shortcut icon" href="static/img/pancake.jpg" type="image/png">
</#macro>

<#macro content>
<br>
<h1>Recipe</h1>
<br>
<form action="/createRecipe" method="post" novalidate enctype="multipart/form-data">
    <p class="lead">
        Enter a Name:<br>
        <input name="title" type="text" style="width: 710px"><br>
    </p>


    <p class="lead">
        Enter a Recipe:<br>
        <label>
            <textarea name="content" placeholder="Recipe..." class="recipe"></textarea>
        </label><br>
    </p>

    <p class="lead">
        <input name="photo" type="file"><br>
    </p>
    <br>
    <p class="lead"><input type="submit" value="Save"></p>
    <br>
</form>
</#macro>
