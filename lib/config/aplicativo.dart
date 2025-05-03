import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/rotas.dart';
import 'package:flutter_application_1/widget/Widget_botao.dart';
import 'package:flutter_application_1/widget/Widget_gastos.dart';
import 'package:flutter_application_1/widget/Widget_inicio.dart';
import 'package:flutter_application_1/widget/Widget_receita.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gestão de Gastos',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Rotas.inicio,
        routes: {
          Rotas.inicio: (context) => const WidgetInicio(),
          Rotas.gastos: (context) => const WidgetGastos(),
          Rotas.receitas: (context) => const WidgetReceita(),
        },
        debugShowCheckedModeBanner: false);
  }
}
