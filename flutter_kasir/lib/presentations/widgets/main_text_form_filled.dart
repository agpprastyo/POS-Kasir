import 'package:flutter/material.dart';

class MainTextFormField extends StatefulWidget {
  const MainTextFormField({
    super.key,
    required this.focusNode,
    required this.controller,
    this.label,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.border = const OutlineInputBorder(),
    this.hintText,
    this.onTap,
    this.suffixIcon,
    this.validator,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final String? label;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final InputBorder border;
  final String? hintText;
  final Function()? onTap;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  State<MainTextFormField> createState() => _MainTextFormFieldState();
}

class _MainTextFormFieldState extends State<MainTextFormField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      focusNode: widget.focusNode,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      onChanged: (value) {
        widget.controller.text = value;
      },
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onTap: widget.onTap,
      readOnly: widget.onTap == null ? false : true,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : widget.suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.label,
        border: widget.border,
      ),
    );
  }
}
