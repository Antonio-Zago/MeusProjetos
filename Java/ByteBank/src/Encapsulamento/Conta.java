package Encapsulamento;


public class Conta {

    //Atributos
    private double saldo; //Não é possivel modificar e ler por outras classes
    private int agencia;
    private int numero;
    private Cliente titular;

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

    public double getSaldo(){
        return this.saldo;
    }


    public int getAgencia() {
        return agencia;
    }

    public void setAgencia(int agencia) {
        this.agencia = agencia;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Cliente getTitular() {
        return titular;
    }

    public void setTitular(Cliente titular) {
        this.titular = titular;
    }
}
