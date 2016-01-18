<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--
~ Copyright (c) 2016. Iceblock.
-->

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Examples 3</title>

    <!--jquery-->
    <script src="../../../resources/jquery.js"></script>
</head>
<body>
<h1>我是动态页面，表格读取 JSON 数据生成</h1>
<table id="table">
    <thead>
    <tr>
        <th>name</th>
        <th>age</th>
        <th>sex</th>
        <th>height(cm)</th>
    </tr>
    </thead>
    <tbody id="tbody">
    </tbody>
</table>

<script>
    $(function () {
        $.ajax({
            url: '../../resources/tableData.json',
            dataType: 'json',
            success: function (data, textStatus) {
                var dataLength = data.length;
                for (var i = 0; i < dataLength; i++) {
                    $('#tbody').append("<tr><td>" + data[i].name + "</td><td>" + data[i].age + "</td><td>" + data[i].sex + "</td><td>" + data[i].height + "</td></tr>");
                }
            }
        });
    });
</script>
</body>
</html>