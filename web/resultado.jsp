<jsp:useBean id="funcionario" class="br.empresa.empregados.Funcionario" scope="page"/>
<jsp:setProperty name="funcionario" property="nome" value="<%= request.getParameter("nome")%>"/>
<jsp:setProperty name="funcionario" property="cargo" value="<%= request.getParameter("cargo")%>"/>
<jsp:setProperty name="funcionario" property="salario" value="<%= request.getParameter("salario")%>"/>
<jsp:setProperty name="funcionario" property="bonus" value="<%= request.getParameter("bonus")%>"/>
<jsp:setProperty name="funcionario" property="diasTrabalhado" value="<%= request.getParameter("diasTrabalhado")%>"/>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="paginaErro.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"/>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dinheiro recebido</title>
    </head>
    <body>
        <% 
               double valor = 0;
    
                if(funcionario.getCargo().equals("caixa")){
                    valor = funcionario.calculo(0.05);
                }
                else if(funcionario.getCargo().equals("vendedor")){
                    valor = funcionario.calculo(0.1);
                }
                else if(funcionario.getCargo().equals("gerente")){
                    valor = funcionario.calculo(0.15);
                }
                else if(funcionario.getCargo().equals("contador")){
                    valor = funcionario.calculo(0.2);
                }
         %>
             
        <h1> -- Salário Final -- <br>R$: <%=valor%></h1>
        <hr>
        <h2> Parabéns! <%=funcionario.getNome()%>.<br> Seu salário foi aumentado graças ao seu trabalho. Continue assim!</h2>        
    </body>
</html>
