import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/utils/mock_data.dart';
import 'package:poke_book/widgets/general_toolbar.dart';

void showLanguageDialog(BuildContext context) async {
  showGeneralDialog(
    barrierDismissible: false,
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      double dialogWidth = MediaQuery.of(context).size.width;
      double dialogHeight = MediaQuery.of(context).size.height;
      return Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: Container(
          width: dialogWidth,
          height: dialogHeight,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const GeneralToolbar(
                title: 'Select a language',
                centerTitle: true,
              ),
              SizedBox(
                height: dialogHeight - 164.0,
                width: dialogWidth,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, index) => Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.pageVerticalMargin,
                      horizontal: AppSizes.pageHorizontalMargin,
                    ),
                    child: Text(
                        "${MockData().languageList[index].name} (${MockData().languageList[index].identifier.toUpperCase()})"),
                  ),
                  separatorBuilder: (BuildContext context, index) =>
                      const Divider(
                    color: Color(0xFFF2F2F2),
                    height: 1.0,
                  ),
                  itemCount: MockData().languageList.length,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.textSecondary,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    minimumSize: Size(dialogWidth, 40),
                    maximumSize: Size(dialogWidth, 40),
                  ),
                  child: const Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      );
    },
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black,
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
  );
}
