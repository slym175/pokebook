import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/borders.dart';
import 'package:poke_book/utils/constants/colors.dart';

class AppPasswordInput extends StatefulWidget {
  const AppPasswordInput(
      {Key? key, required this.controller, this.hint, this.validator})
      : super(key: key);

  final TextEditingController controller;
  final String? hint;
  final Function? validator;

  @override
  State<AppPasswordInput> createState() => _AppPasswordInputState();
}

class _AppPasswordInputState extends State<AppPasswordInput> {
  bool passwordVisible = true;
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: passwordFocusNode,
      controller: widget.controller,
      keyboardType: TextInputType.text,
      obscureText: passwordVisible,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 16.0,
        ),
        hintText: widget.hint ?? '',
        hintStyle: const TextStyle(
          fontSize: 16.0,
          color: AppColors.textHint,
        ),
        enabledBorder: AppBorders().enabledBorder(isSearch: false),
        focusedBorder: AppBorders().focusedBorder(isSearch: false),
        disabledBorder: AppBorders().enabledBorder(isSearch: false),
        errorBorder: AppBorders().errorBorder(isSearch: false),
        focusedErrorBorder: AppBorders().errorBorder(isSearch: false),
        suffixIcon: IconButton(
          icon: Icon(
            passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: passwordFocusNode.hasFocus
                ? AppColors.textBlack
                : AppColors.textHint,
          ),
          onPressed: () {
            setState(() {
              passwordVisible = !passwordVisible;
            });
          },
        ),
      ),
      style: const TextStyle(
        fontSize: 16.0,
        color: AppColors.textBlack,
      ),
      validator: (value) {
        if (widget.validator == null) return null;
        return widget.validator!(value);
      },
    );
  }
}
