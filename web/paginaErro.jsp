<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"/>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <h1>-- Um erro foi encontrado --</h1> 
        <h4>(<%=exception%>)</h4>
        <br><hr>
        <h2> Por favor, preencha o formulário novamente. </h2>
        <button onclick="history.back()"> Voltar </button>
    </body>
</html>
