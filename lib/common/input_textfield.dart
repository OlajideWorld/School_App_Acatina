import 'package:acatina_app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../utils/colors.dart';

class InputTextField extends StatefulWidget {
  final bool obscureText;
  final bool password;
  final int maxlines;
  final TextEditingController? controller;
  final validator;
  final keyboardType;
  final bool textInputAction;
  final String? hintText;

  const InputTextField({
    Key? key,
    required this.obscureText,
    this.textInputAction = false,
    this.controller,
    this.password = false,
    this.validator,
    this.hintText,
    this.keyboardType,
    required this.maxlines,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: TextStyle(
        fontSize: fontSize(15),
      ),
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      maxLines: widget.obscureText == false ? null : widget.maxlines,
      minLines: null,
      expands: widget.obscureText == false ? true : false,
      textInputAction:
          !widget.textInputAction ? TextInputAction.next : TextInputAction.done,
      obscureText: widget.obscureText ? !_passwordVisible : false,
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(22, 76, 131, 0.05),
          hintText: widget.hintText,
          hintStyle:
              TextStyle(fontSize: fontSize(13), fontWeight: FontWeight.w400),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: maincolor),
          ),
          suffixIcon: widget.obscureText == true
              ? IconButton(
                  icon: _passwordVisible
                      ? const Icon(Icons.visibility, color: maincolor)
                      : const Icon(Icons.visibility_off, color: maincolor),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
          contentPadding: EdgeInsets.only(
              bottom: heightSize(20), left: widthSize(17), top: heightSize(19)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: maincolor),
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: maincolor))),
    );
  }
}
