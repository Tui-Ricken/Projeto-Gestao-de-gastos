import 'package:flutter/material.dart';

class CampoAtivo extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CampoAtivo({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SwitchListTile(
        title: Text('Ativo'),
        value: value,
        onChanged: onChanged,
        activeColor: Colors.green,
        inactiveThumbColor: Colors.red,
      ),
    );
  }
}
