package Introducao;

public class TesteMetodo {

    public static void main(String[] args) {
        Conta conta = new Conta();


        conta.deposita(1000.0);

        boolean retorno = conta.saca(325);
        System.out.println(retorno);

        System.out.println(conta.saldo);

        Conta conta2 = new Conta();

        boolean retornoTrasf = conta.transfere(300, conta2);

        System.out.println(retornoTrasf);

        System.out.println(conta2.saldo);

    }
}
