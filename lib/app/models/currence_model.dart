class CurrencyModel {
  late final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.16, bitcoin: 0.0000043),
      CurrencyModel(
          name: 'Dólar', real: 5.42, dolar: 1.0, euro: 0.88, bitcoin: 0.000023),
      CurrencyModel(
          name: 'Euro', real: 6.15, dolar: 1.13, euro: 1.0, bitcoin: 0.000027),
      CurrencyModel(
          name: 'Bitcoin',
          real: 231.809,
          dolar: 42.805,
          euro: 37.711,
          bitcoin: 1.0),
    ];
  }
}
