import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/rotas.dart';
import 'package:flutter_application_1/widget/Widget_botao.dart';

class WidgetReceita extends StatelessWidget {
  const WidgetReceita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestão de Receitas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela de Receitas'),
            SizedBox(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: 40,
                      title: 'Gado',
                      color: Colors.brown,
                    ),
                    PieChartSectionData(
                      value: 30,
                      title: 'Plantação',
                      color: Colors.green,
                    ),
                    PieChartSectionData(
                      value: 30,
                      title: 'Outros',
                      color: Colors.orange,
                    ),
                  ],
                  sectionsSpace: 3,
                  centerSpaceRadius: 80,
                ),
              ),
            ),
            WidgetBotao(
                rota: Rotas.gastos,
                rotulo: 'Gastos',
                onPressed: () {},
                cor: Colors.greenAccent),
            const SizedBox(height: 10),
            WidgetBotao(
                rota: Rotas.inicio,
                rotulo: 'Voltar para o início',
                onPressed: () {},
                cor: Colors.greenAccent),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: Colors.black87),
          ],
        ),
      ),
    );
  }
}
