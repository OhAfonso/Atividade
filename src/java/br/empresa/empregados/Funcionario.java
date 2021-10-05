package br.empresa.empregados;


public  class Funcionario {
    
    private String nome;
    private String cargo;
    private String salario;
    private String bonus;
    private String diasTrabalhado;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
      public String getSalario() {
        return salario;
    }
    
      public void setSalario(String salario) {
        this.salario = salario;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getDiasTrabalhado() {
        return diasTrabalhado;
    }

    public void setDiasTrabalhado(String diasTrabalhado) {
        this.diasTrabalhado = diasTrabalhado;
    }
    
     public double calculo(double porcent){
        double valor, salarioCalc;
        int bonusCalc, diasTbCalc;
        
        salarioCalc = Double.parseDouble(getSalario());
        bonusCalc = Integer.parseInt(getBonus());
        diasTbCalc = Integer.parseInt(getDiasTrabalhado());
        
        if(diasTbCalc >= 152){
            valor = (salarioCalc + ((salarioCalc / 2) * (bonusCalc / 100)));
            return Math.round((valor + (valor * porcent)));         

        }
        else {
            valor = (salarioCalc + ((salarioCalc / 3) * (bonusCalc / 100)));
            return Math.round(valor + (valor * porcent)); 
           
        }

    }
   
}
