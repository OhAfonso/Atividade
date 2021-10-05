package br.empresa.empregados;

public class Cargo {
    
    String html = "";
    
    public Cargo(){
        html +="<select name=\"cargo\" id=\"cargo\"  required=\"\">";
        html +="<option value=\"caixa\">Caixa</option>";
        html +="<option value=\"vendedor\">Vendedor</option>";
        html +="<option value=\"gerente\">Gerente</option>";
        html +="<option value=\"contador\">Contador</option>";
        html +="</select>";
    }
    
    public String getCargo(){
        return html;
    }
}
