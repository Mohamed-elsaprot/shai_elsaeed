import 'package:flutter/material.dart';

import '../../../../general widgets/custom_textField.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool vis = true;
  var con2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: con2,
      fillColor: Colors.white,
      obscureText: vis,
      suffixIcon: GestureDetector(
        child: const Icon(Icons.visibility,color: Colors.black54,),
        onTap: ()=> setState(()=> vis = !vis),
      ),
      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
    );
  }
}
