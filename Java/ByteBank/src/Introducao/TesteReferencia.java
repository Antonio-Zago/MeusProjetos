package Introducao;

public class TesteReferencia {
    public static void main(String[] args) {
        Conta  conta1 = new Conta();

        conta1.saldo = 200;

        Conta conta2 = conta1; //Aponta para o mesmo endereço de memória

        System.out.println("Saldo Conta 1: " +conta1.saldo);
        System.out.println("Saldo Conta 2: " +conta2. saldo);
        System.out.println();

        conta2.saldo += 1000;

        System.out.println("Saldo Conta 1: " +conta1.saldo);
        System.out.println("Saldo Conta 2: " +conta2. saldo);




    }
}
