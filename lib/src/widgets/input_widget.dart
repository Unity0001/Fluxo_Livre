import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputWidget extends StatelessWidget {
  final IconData? icon;
  final String hint;
  final bool obscure;
  final TextInputType inputType;

  const InputWidget({
    this.icon,
    required this.hint,
    this.obscure = false,
    this.inputType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var inputFormatters = <TextInputFormatter>[];

    if (hint.toLowerCase().contains("cpf")) {
      inputFormatters.add(
        MaskTextInputFormatter(
          mask: '###.###.###-##',
          filter: {"#": RegExp(r'[0-9]')},
        ),
      );
    } else if (obscure) {
      inputFormatters.add(
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
      );
    }

    return TextField(
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.white),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
        ),
      ),
      style: TextStyle(color: Colors.white),
      obscureText: obscure,
    );
  }
}
