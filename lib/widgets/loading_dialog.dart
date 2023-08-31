import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';

void showLoadingDialog(BuildContext context, [bool mounted = true]) async {
  showGeneralDialog(
    barrierDismissible: false,
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primary,
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColors.loading,
          ),
        ),
      );
    },
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black,
    transitionDuration: const Duration(milliseconds: 200),
  );

  await Future.delayed(const Duration(seconds: 2));

  if (!mounted) return;
  Navigator.of(context).pop();
}
