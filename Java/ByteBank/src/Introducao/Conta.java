package Introducao;

public class Conta {

    //Atributos
    double saldo; //Não é possivel modificar e ler por outras classes
    int agencia;
    int numero;
    Cliente titular;

    public void deposita(Double valor){
        this.saldo += valor; //This refere-se ao objeto que foi invocado esse método
    }

    public boolean saca(double valor){

        if(this.saldo >= valor){
            this.saldo -= valor;
            return true;
        }else{
            return false;
        }

    }

    public boolean transfere(double valor, Conta contaDestino){

        if(this.saldo >= valor){
            this.saldo -= valor;
            contaDestino.deposita(valor);
            return true;
        }else{
            return false;
        }
    }

    public double pegaSaldo(){
        return this.saldo;
    }


}
