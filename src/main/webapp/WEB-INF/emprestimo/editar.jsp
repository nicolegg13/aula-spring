<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Novo Empréstimo</title>
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
        div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
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
        a {
            text-decoration: none;
            color: #dc3545;
            padding: 10px 15px;
            border: 1px solid #dc3545;
            border-radius: 4px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<h1>Novo Empréstimo</h1>

<form action="${pageContext.request.contextPath}/emprestimos/salvar" method="post">
    <div>
        <label>Livro:</label>
        <select name="id_livro_emp" required>
            <option value="">Selecione um livro</option>
            <c:forEach items="${livros}" var="livro">
                <option value="${livro.id_liv}">${livro.titulo_liv} (${livro.isbn_liv})</option>
            </c:forEach>
        </select>
    </div>

    <div>
        <label>Usuário:</label>
        <select name="id_usuario_emp" required>
            <option value="">Selecione um usuário</option>
            <c:forEach items="${usuarios}" var="usuario">
                <option value="${usuario.id_us}">${usuario.nome_us} (${usuario.email_us})</option>
            </c:forEach>
        </select>
    </div>

    <button type="submit">Registrar Empréstimo</button>
    <a href="${pageContext.request.contextPath}/emprestimos">Cancelar</a>
</form>
</body>
</html>