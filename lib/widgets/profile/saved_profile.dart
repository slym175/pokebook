import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:poke_book/utils/constants/colors.dart';

class SavedProfile extends StatelessWidget {
  const SavedProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.borderPrimary,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 8.0),
          Icon(
            TablerIcons.progress_check,
            size: 36.0,
            color: Colors.white,
          ),
          SizedBox(height: 8.0),
          Text(
            'Action taken with success',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
