<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>菜鸟教程</title>

    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <style>
        table, td, th
        {
            border:1px solid green;
        }
        th
        {
            background-color:green;
            color:white;
        }
    </style>
</head>
<body>
<div class="container">
    <table class="table">
        <tr>
            <th>作者</th>
            <th>教程名称</th>
            <th>内容</th>
        </tr>

        <#list articles as article>
            <tr>
                <td>${article.author!"null"}</td>
                <td>${article.title!"null"}</td>
                <td>${article.content!"null"}</td>
            </tr>
        </#list>
    </table>
</div>

<script src="/webjars/jquery/jquery.min.js "></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
