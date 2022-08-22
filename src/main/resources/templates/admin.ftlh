<#import "blocks/template.ftlh" as t>
<@t.template user>
`<h1 style="text-align: center">Admin panel</h1><hr>
<table class="table table-hover table-dark">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>*
        <th>Editing</th>
        <th>Detail information</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" class="btn btn-light" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Editing</a></th>
            <th><a href="/user/${user.id}">Detail information</a></th>
        </tr>
    <#else>
        <h3>No users</h3>
    </#list>
</table>
</@t.template>