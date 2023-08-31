import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/general_toolbar.dart';

class TermConditionPage extends StatefulWidget {
  const TermConditionPage({Key? key}) : super(key: key);

  @override
  State<TermConditionPage> createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  late String termConditions = '';

  Future<String> readTermConditions() async {
    return await rootBundle.loadString('assets/docs/term_conditions.text');
  }

  @override
  void initState() {
    super.initState();
    readTermConditions().then((value) {
      setState(() {
        termConditions = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;
    double contentHeight = pageHeight - 84.0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: SizedBox(
        width: pageWidth,
        height: pageHeight,
        child: Column(
          children: <Widget>[
            const GeneralToolbar(
              title: 'Terms & Conditions',
              centerTitle: true,
            ),
            Container(
              height: contentHeight - 80.0,
              width: pageWidth,
              padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
              child: SingleChildScrollView(
                child: Html(
                  data: termConditions,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
              child: ElevatedButton(
                onPressed: () {
                  context.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  minimumSize: Size(pageWidth, 40),
                  maximumSize: Size(pageWidth, 40),
                ),
                child: const Text('Yes, I agree!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
