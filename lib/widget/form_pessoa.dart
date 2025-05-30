//- Criar um classe de componente para o campo ativo
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/rotas.dart';

import 'campo_ativo.dart';
import 'campo_dropdown.dart';
import 'campo_texto.dart';
import 'validador_cpf.dart';

class FormPessoa extends StatefulWidget {
  @override
  _FormPessoaState createState() => _FormPessoaState();
}

class _FormPessoaState extends State<FormPessoa> {
  final _formKey = GlobalKey<FormState>();

  // Controllers para os campos de texto
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _sobrenomeController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();

  // Campos de seleção
  String? _cidade;
  String? _estado;
  bool? _isAtivo;

  // Dados pré-definidos para as opções
  final List<String> cidades = [
    'São Paulo',
    'Rio de Janeiro',
    'Belo Horizonte'
  ];
  final List<String> estados = ['SP', 'RJ', 'MG'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pessoa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CampoTexto(
                controller: _nomeController,
                label: 'Nome',
              ),
              CampoTexto(
                controller: _sobrenomeController,
                label: 'Sobrenome',
              ),
              CampoTexto(
                controller: _telefoneController,
                label: 'Telefone',
              ),
              CampoTexto(
                controller: _emailController,
                label: 'E-mail',
              ),
              CampoTexto(
                controller: _cpfController,
                label: 'CPF',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'CPF é obrigatório';
                  }
                  if (!ValidadorCPF.validar(value)) {
                    return 'CPF inválido';
                  }
                  return null;
                },
              ),
              CampoDropdown(
                label: 'Cidade',
                options: cidades,
                value: _cidade,
                onChanged: (value) {
                  setState(() {
                    _cidade = value;
                  });
                },
              ),
              CampoDropdown(
                label: 'Estado',
                options: estados,
                value: _estado,
                onChanged: (value) {
                  setState(() {
                    _estado = value;
                  });
                },
              ),
              CampoAtivo(
                value: _isAtivo ?? false,
                onChanged: (value) {
                  setState(() {
                    _isAtivo = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Cadastro realizado com sucesso!')));
                    // Navegar para a próxima página
                    Navigator.of(context).pushReplacementNamed(Rotas.inicio);
                  }
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
