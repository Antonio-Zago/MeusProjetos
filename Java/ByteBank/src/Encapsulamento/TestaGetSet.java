package Encapsulamento;

public class TestaGetSet {
    public static void main(String[] args) {
        Conta conta = new Conta();

        conta.setNumero(12345);
        conta.setAgencia(4321);


        System.out.println(conta.getNumero());
        System.out.println(conta.getAgencia());

        Cliente paulo = new Cliente();

        conta.setTitular(paulo);

        paulo.setNome("Antonio");
        paulo.setCpf("1234");
        conta.getTitular().setProfissao("Programador");

        System.out.println(conta.getTitular().getNome());
        System.out.println(conta.getTitular().getProfissao());

    }
}
