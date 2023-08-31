import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/profile/saved_profile.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class EditPokedexBox extends StatefulWidget {
  const EditPokedexBox({
    Key? key,
    required this.label,
    required this.content,
    required this.onTap,
    this.defaultValue,
  }) : super(key: key);

  final String label;
  final String content;
  final Function onTap;
  final bool? defaultValue;

  @override
  State<EditPokedexBox> createState() => _EditPokedexBoxState();
}

class _EditPokedexBoxState extends State<EditPokedexBox> {
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  late bool checked;

  @override
  void initState() {
    super.initState();
    checked = widget.defaultValue != null && widget.defaultValue == true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.pageVerticalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.label,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: AppColors.textBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2.0),
                Text(
                  widget.content,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Switch(
                thumbIcon: thumbIcon,
                activeTrackColor: AppColors.btnPrimary,
                value: checked,
                onChanged: (bool value) {
                  setState(() {
                    checked = value;
                  });
                  widget.onTap(value);
                  showTopModalSheet<String?>(
                    context,
                    const SavedProfile(),
                    barrierDismissible: false,
                  );
                  Future.delayed(const Duration(seconds: 3), () {
                    if (mounted) {
                      Navigator.of(context).pop('true');
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
