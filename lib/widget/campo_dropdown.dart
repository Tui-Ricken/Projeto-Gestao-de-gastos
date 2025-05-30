import 'package:flutter/material.dart';

class CampoDropdown extends StatelessWidget {
  final String label;
  final List<String> options;
  final String? value;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  const CampoDropdown({
    Key? key,
    required this.label,
    required this.options,
    required this.value,
    required this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        value: value,
        onChanged: onChanged,
        items: options.map<DropdownMenuItem<String>>((String val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        }).toList(),
        validator: validator ?? (val) {
          if (val == null) {
            return '$label é obrigatório';
          }
          return null;
        },
      ),
    );
  }
}
