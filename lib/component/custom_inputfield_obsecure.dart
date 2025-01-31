import 'package:flutter/material.dart';

class CustomHideInput extends StatefulWidget {
  const CustomHideInput({
    super.key,
    required this.style,
    required this.text,
  });
  final TextStyle? style;
  final String? text;

  @override
  State<CustomHideInput> createState() => _CustomHideInputState();
}

class _CustomHideInputState extends State<CustomHideInput> {
  bool hidden = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: TextField(
        obscureText: hidden,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidden = !hidden;
              });
            },
            icon: Icon(hidden ? Icons.visibility_off : Icons.visibility),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: widget.text,
          hintStyle: widget.style,
        ),
      ),
    );
  }
}
