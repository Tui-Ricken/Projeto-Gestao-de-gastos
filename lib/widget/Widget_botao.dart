import 'package:flutter/material.dart';

class WidgetBotao extends StatelessWidget {
  final String rota;
  final String rotulo;
  final Color? cor;

  const WidgetBotao({
    super.key,
    required this.rota,
    required this.rotulo,
    required Null Function() onPressed,
    this.cor,
  });

  @override
  Widget build(BuildContext context) {
    {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: cor),
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        },
        child: Text(rotulo),
      );
    }
  }
}
