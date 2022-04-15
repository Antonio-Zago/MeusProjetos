package Introducao;

public class TesteContaMarcela {

    public static void main(String[] args) {
        Conta contaMarcela = new Conta();

        contaMarcela.deposita(100.0);

        contaMarcela.titular = new Cliente();
        contaMarcela.titular.nome = "Marcela";

        System.out.println(contaMarcela.titular.nome);
    }
}
