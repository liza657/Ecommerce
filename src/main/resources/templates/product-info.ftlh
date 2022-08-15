<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce</title>
</head>
<body>
<h1>Ecommerce</h1>
<hr>
<h4>More info about product</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Title:</b>${product.title}<br>
<b>Description:</b>${product.description}<br>
<b>Price:</b>${product.price}<br>
<b>City:</b>${product.city}<br>
<b>Author:</b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product">
</form>

</body>
</html>