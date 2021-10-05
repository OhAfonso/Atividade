<%@page import="br.empresa.empregados.Cargo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"/>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <div>
            <h1><strong>-- Bem-vindo --</strong></h1>
            <br>
            <h3> Vamos calcular sua bonificação!? Preencha o formulário a baixo  ↓</h3>
            <hr>
            <form action="resultado.jsp" name="formularioBonific" method="post">
                Nome: <input type="text" name="nome" placeholder="Nome completo"><br><br>
                Cargo: <%= new Cargo().getCargo()%><br><br>
                Salário: <input type="number" name="salario" placeholder="Ex: 1500,00"><br><br>
                Bônus/Comissão: <input type="number" name="bonus" placeholder="0% à 100%" max="100" ><br><br>
                Dias trabalhados: <input type="number" name="diasTrabalhado" placeholder="Quantidade de dias"><br><br>
                <input type="submit" value="Enviar"> 
                <input type="reset" value="Limpar">
            </form>
            
        </div>
    </body>
</html>
