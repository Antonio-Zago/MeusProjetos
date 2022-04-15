package Introducao;

public class CriaConta {
    public static void main(String[] args) {
        Conta conta1 = new Conta();
        conta1.saldo = 200;
        System.out.println(conta1.saldo);


        conta1.saldo += 100;

        System.out.println(conta1.saldo);
        System.out.println(conta1.titular);
    }
}
