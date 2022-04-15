package Encapsulamento;


public class TesteSacaNegativo {
    public static void main(String[] args) {
        Conta conta = new Conta();

        conta.deposita(100.0);

        conta.saca(200.0);

        //Proibido. Quero trabalhar com saldo apenas com os métodos
        //conta.saldo -= 300.0;


        System.out.println(conta.getSaldo());

    }
}
