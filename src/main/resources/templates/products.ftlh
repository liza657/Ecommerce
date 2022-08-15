<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce</title>
</head>
<body>
<h1>Ecommerce</h1>
<h4>Products from Ukraine</h4>
<form action="/" method="get">
    Search by title:<input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b>${product.price} uan. | <a href="/product/${product.id}">More info...</a></p>
    </div>
<#else>
    <h3>There are no products</h3>
</#list>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post">
    Title:<input type="text" name="title"/> <br><br>
    Description:<input type="text" name="description"/> <br><br>
    Price:<input type="number" name="price"/> <br><br>
    City:<input type="text" name="city"/> <br><br>
    Author:<input type="text" name="author"/> <br><br>
    <input type="submit" value="Add product">


</form>
</body>
</html>