<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Meus Empréstimos</title>
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
    table {
      border-collapse: collapse;
      width: 100%;
      margin-top: 20px;
      background-color: #fff;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
    }
    th {
      background-color: #e9ecef;
      color: #555;
      font-weight: bold;
    }
    .devolver-btn {
      background-color: #28a745;
      color: white;
      padding: 5px 10px;
      border-radius: 4px;
      text-decoration: none;
    }
    .logout-link {
      margin-top: 20px;
      display: inline-block;
      color: #dc3545;
      text-decoration: none;
      font-weight: bold;
    }
  </style>
</head>
<body>

<h1>Meus Empréstimos</h1>

<c:if test="${not empty mensagem}">
  <p style="color: green;">${mensagem}</p>
</c:if>

<table>
  <tr>
    <th>ID</th>
    <th>Livro</th>
    <th>Data Empréstimo</th>
    <th>Data Devolução Prevista</th>
    <th>Status</th>
    <th>Ações</th>
  </tr>
  <c:forEach items="${emprestimos}" var="emp">
    <tr>
      <td>${emp.id_emp}</td>
      <td>${emp.titulo_livro}</td>
      <td>${emp.data_emprestimo_emp}</td>
      <td>${emp.data_devolucao_prevista_emp}</td>
      <td>${emp.status_emp}</td>
      <td class="action-links">
        <c:if test="${emp.status_emp eq 'ATIVO'}">
          <a href="${pageContext.request.contextPath}/meus-emprestimos/devolver/${emp.id_emp}" class="devolver-btn">Devolver</a>
        </c:if>
      </td>
    </tr>
  </c:forEach>
</table>

<a href="${pageContext.request.contextPath}/logout" class="logout-link">Sair</a>
</body>
</html>