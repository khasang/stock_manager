<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Translator en-ru</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script src="../js/translation.js"></script>
</head>
<body>
<h1>Переводчик с английского на русский</h1>
<input type="text" size="24" id='wordToTranslate'>
<button onCLick='getJsonpTranslate()'>Перевести</button>
<br><br>
<table id="resultTable" border='1'>
    <caption><h3>История переводов</h3></caption>
    <tr>
        <th>Англиский</th>
        <th>Русский</th>
    </tr>
</table>
</body>
</html>

