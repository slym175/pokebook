import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/borders.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';

showDeleteAccountBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      double sheetWidth = MediaQuery.of(context).size.width;
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorders.bottomSheetBorderRadius,
        ),
        padding: const EdgeInsets.all(
          AppSizes.pageHorizontalMargin,
        ),
        height: 164,
        width: sheetWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Are you sure you want to quit?',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                height: 24 / 16,
              ),
            ),
            const SizedBox(
              height: AppSizes.pageVerticalMargin,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textError,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                minimumSize: Size(sheetWidth, 40),
                maximumSize: Size(sheetWidth, 40),
              ),
              child: const Text('Yes, leave!'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: AppColors.textFilter,
                minimumSize: Size(sheetWidth, 40),
                maximumSize: Size(sheetWidth, 40),
              ),
              child: const Text('No, cancel'),
            )
          ],
        ),
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
  );
}
