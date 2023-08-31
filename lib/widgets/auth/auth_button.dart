import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.icon,
    this.primary,
    this.disabled,
  }) : super(key: key);

  final bool? primary;
  final bool? disabled;
  final String title;
  final Widget? icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        disabled == null || disabled == false ? onTap() : null;
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: disabled == null || disabled == false
                ? (primary == null || primary == false
                    ? AppColors.borderSecondary
                    : AppColors.borderPrimary)
                : AppColors.textDisabled,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          color: disabled == null || disabled == false
              ? (primary == null || primary == false
                  ? Colors.white
                  : AppColors.btnPrimary)
              : AppColors.textDisabled,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 32.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            icon != null
                ? Expanded(
                    flex: 1,
                    child: icon as Widget,
                  )
                : const SizedBox(),
            Expanded(
              flex: 10,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: disabled == null || disabled == false
                      ? (primary == null || primary == false
                          ? AppColors.textPrimary
                          : Colors.white)
                      : AppColors.textHint,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
