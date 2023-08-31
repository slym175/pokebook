import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';

class EditProfileBox extends StatefulWidget {
  const EditProfileBox({
    Key? key,
    required this.label,
    required this.content,
    this.onTap,
    this.hideIcon,
    this.labelDanger,
  }) : super(key: key);

  final String label;
  final String content;
  final Function? onTap;
  final bool? hideIcon;
  final bool? labelDanger;

  @override
  State<EditProfileBox> createState() => _EditProfileBoxState();
}

class _EditProfileBoxState extends State<EditProfileBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.pageVerticalMargin),
      child: InkWell(
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 14.0,
                    color:
                        widget.labelDanger != null && widget.labelDanger == true
                            ? AppColors.textError
                            : AppColors.textBlack,
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
            widget.hideIcon != null && widget.hideIcon == true
                ? const SizedBox(height: 0.0, width: 0.0)
                : const Icon(
                    TablerIcons.chevron_right,
                    size: 20.0,
                  ),
          ],
        ),
      ),
    );
  }
}
