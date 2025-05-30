import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/rotas.dart';
import 'package:flutter_application_1/widget/Widget_botao.dart';

class WidgetLogin extends StatelessWidget {
  const WidgetLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Center(
            child: Column(
          children: [
            const Text('Login'),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome:',
                hintText: 'Informe o cadastro do usuário',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Senha:',
                hintText: 'Informe a senha do usuário',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            WidgetBotao(
                rota: Rotas.inicio,
                rotulo: 'Entrar',
                onPressed: () {},
                cor: Colors.lightBlue),
            const SizedBox(height: 20,),
            WidgetBotao(rota:Rotas.pessoa,
             rotulo: 'Cadastro',
              onPressed:(){},
              cor: Colors.lightBlue)
          ],
        )));
  }
}
