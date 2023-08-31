import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';

class HomeFilterDropdown extends StatelessWidget {
  const HomeFilterDropdown({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: (MediaQuery.of(context).size.width -
                AppSizes.pageHorizontalMargin * 3) /
            2,
        decoration: const BoxDecoration(
          color: AppColors.textFilter,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: AppSizes.pageHorizontalMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                left: AppSizes.pageHorizontalMargin,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Icon(
              TablerIcons.chevron_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
