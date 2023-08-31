import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/borders.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';

showOrderSheet(BuildContext context, List<String> entries) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      double sheetHeight = MediaQuery.of(context).size.height / 2.5;
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorders.bottomSheetBorderRadius,
        ),
        padding: const EdgeInsets.all(
          AppSizes.pageHorizontalMargin,
        ),
        height: sheetHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Select the order',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: AppSizes.pageHorizontalMargin,
            ),
            SizedBox(
              height: sheetHeight - AppSizes.pageHorizontalMargin * 5,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(24.0),
                        ),
                        color: AppColors.textFilter,
                      ),
                      height: 50,
                      child: Center(
                        child: Text(
                          entries[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12.0),
              ),
            ),
          ],
        ),
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
  );
}
