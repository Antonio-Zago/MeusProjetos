import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado Pago'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            PaymentResult result =
                await MercadoPagoMobileCheckout.startCheckout(
              publicKey,
              preferenceId,
            );
            print(result.toString());
          },
          child: Text('Pagar'),
        ),
      ),
    );
  }
}
