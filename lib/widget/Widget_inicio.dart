import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/rotas.dart';
import 'package:flutter_application_1/widget/Widget_botao.dart';

class WidgetInicio extends StatelessWidget {
  const WidgetInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela Inicial'),
            const SizedBox(
              height: 400,
            ),
            //Image.asset('assets/imagem.(...)') como por imagem na tela inicial -> adicionar a imagem no assets -> adicionar no pubspec.yaml -> depois por esse comando.
            WidgetBotao(
                rota: Rotas.gastos,
                rotulo: 'Ir para Gastos',
                onPressed: () {},
                cor: Colors.greenAccent),
            const SizedBox(height: 20),
            WidgetBotao(
                rota: Rotas.receitas,
                rotulo: 'Ir para Receitas',
                onPressed: () {},
                cor: Colors.greenAccent),

          ],
        ),
      ),
    );
  }
}
