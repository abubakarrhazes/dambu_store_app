
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required this.controller, this.hintText, this.keyboardType, this.validator, this.prefix, this.onSaved, this.suffix,
  });


  final String? hintText;

  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  final Icon? prefix;
  final Icon? suffix;
  final void Function(String?)? onSaved;

  final TextEditingController? controller;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ,
      keyboardType: keyboardType,
      validator: validator,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: hintText,
          prefixIcon: prefix,
          suffixIcon: suffix,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),


          )

      ),

    );
  }
}