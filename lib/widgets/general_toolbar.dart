import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/sizes.dart';

class GeneralToolbar extends StatelessWidget {
  const GeneralToolbar({
    Key? key,
    required this.title,
    this.showUserProfile,
    this.centerTitle,
  }) : super(key: key);

  final String title;
  final bool? showUserProfile;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF2F2F2),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: centerTitle != null && centerTitle == true
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: <Widget>[
          showUserProfile != null && showUserProfile == true
              ? Container(
                  width: 27.0,
                  height: 27.0,
                  margin: const EdgeInsets.only(right: 12.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    width: 27.0,
                    height: 27.0,
                  ),
                )
              : const SizedBox(
                  width: 0,
                  height: 0,
                ),
          Container(
            alignment: centerTitle != null && centerTitle == true
                ? Alignment.center
                : Alignment.centerLeft,
            child: Text(
              title,
              textAlign: centerTitle != null && centerTitle == true
                  ? TextAlign.center
                  : TextAlign.start,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
