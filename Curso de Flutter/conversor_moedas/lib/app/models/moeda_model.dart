class Moeda_model{
  final String nome;
  final double real;
  final double dolar;
  final double euro;

  Moeda_model(this.nome, this.real, this.dolar, this.euro);

  static List<Moeda_model> getMoeda(){
    return <Moeda_model>[
      Moeda_model('Real', 1.0, 0.18, 0.15),
      Moeda_model('Dolar', 5.65, 1.0, 0.85),
      Moeda_model('Euro', 6.62, 1.17, 1.0)
    ];
  }
}