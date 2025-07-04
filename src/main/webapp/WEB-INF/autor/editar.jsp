<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${empty autor.id_aut ? 'Novo Autor' : 'Editar Autor'}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
            vertical-align: middle;
        }
        input[type="text"],
        input[type="date"] {
            width: calc(100% - 160px);
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            vertical-align: middle;
        }
        button[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
        }
        button[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            text-decoration: none;
            color: #dc3545;
            padding: 10px 15px;
            border: 1px solid #dc3545;
            border-radius: 4px;
            font-size: 16px;
        }
        a:hover {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
<h1>${empty autor.id_aut ? 'Novo Autor' : 'Editar Autor'}</h1>

<c:if test="${not empty mensagem}">
    <p style="color: red;">${mensagem}</p>
</c:if>

<form action="${pageContext.request.contextPath}/autores/salvar" method="post">
    <input type="hidden" name="id_aut" value="${autor.id_aut}">

    <div class="form-group">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome_aut" value="${autor.nome_aut}" required>
    </div>

    <div class="form-group">
        <label for="nacionalidade">Nacionalidade:</label>
        <input type="text" id="nacionalidade" name="nacionalidade_aut" value="${autor.nacionalidade_aut}">
    </div>

    <div class="form-group">
        <label for="data_nascimento">Data Nascimento:</label>
        <input type="date" id="data_nascimento" name="data_nascimento_aut"
               value="${autor.data_nascimento_aut}" required>
    </div>

    <div class="form-group">
        <button type="submit">Salvar</button>
        <a href="${pageContext.request.contextPath}/autores">Cancelar</a>
    </div>
</form>
</body>
</html>