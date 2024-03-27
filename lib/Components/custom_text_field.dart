import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    // required this.onTap,
    required this.labelText,
    this.prefixIcon,
    this.prefixWidget,
    this.suffixIcon,
  }) : super(key: key);

  // final VoidCallback onTap;
  final String labelText;
  final Icon? prefixIcon;
  final Widget? prefixWidget;
  final Widget? suffixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onTap: widget.onTap,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor
          ),
        ),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Color(0XFFADB4C0), fontSize: 16),
        prefixIcon: widget.prefixWidget,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
