package Introducao;

public class TestaBanco {
    public static void main(String[] args) {
        Cliente paulo = new Cliente();
        paulo.nome = "Paulo";
        paulo.cpf = "123456";
        paulo.profissao = "programador";

        Conta contaPaulo = new Conta();
        contaPaulo.deposita(100.0);
        contaPaulo.titular = paulo;

        System.out.println(contaPaulo.titular.nome);
    }
}
