import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/borders.dart';
import 'package:poke_book/utils/constants/colors.dart';

class AppTextInput extends StatefulWidget {
  const AppTextInput({
    Key? key,
    required this.controller,
    this.hint,
    this.validator,
    this.isSearch,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hint;
  final Function? validator;
  final bool? isSearch;

  @override
  State<AppTextInput> createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  FocusNode textFocusNode = FocusNode();

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    textFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: textFocusNode,
      controller: widget.controller,
      keyboardType: TextInputType.text,
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
        enabledBorder:
            AppBorders().enabledBorder(isSearch: widget.isSearch as bool),
        focusedBorder:
            AppBorders().focusedBorder(isSearch: widget.isSearch as bool),
        disabledBorder:
            AppBorders().enabledBorder(isSearch: widget.isSearch as bool),
        errorBorder:
            AppBorders().errorBorder(isSearch: widget.isSearch as bool),
        focusedErrorBorder:
            AppBorders().errorBorder(isSearch: widget.isSearch as bool),
        prefixIcon: widget.isSearch as bool
            ? IconButton(
                icon: Icon(
                  Icons.search,
                  color: textFocusNode.hasFocus
                      ? AppColors.textBlack
                      : AppColors.textHint,
                ),
                onPressed: () {
                  if (kDebugMode) {
                    print('Search');
                  }
                },
              )
            : const SizedBox(height: 0, width: 0),
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
