import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';

AppBar authAppBar(BuildContext context, {String title = ''}) {
  return AppBar(
    leading: context.canPop()
        ? IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
            icon: const Icon(
              TablerIcons.chevron_left,
              color: Colors.black,
            ),
          )
        : const SizedBox(),
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
  );
}
