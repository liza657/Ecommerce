<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce</title>
</head>
<body>
<h1>Ecommerce</h1>
<hr>
<h3>User editing ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</body>
</html>