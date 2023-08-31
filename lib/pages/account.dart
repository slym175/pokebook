import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/widgets/general_bottom_navigation_bar.dart';
import 'package:poke_book/widgets/general_toolbar.dart';
import 'package:poke_book/widgets/language_dialog.dart';
import 'package:poke_book/widgets/profile/delete_account_bottom_sheet.dart';
import 'package:poke_book/widgets/profile/edit_pokedex_box.dart';
import 'package:poke_book/widgets/profile/edit_profile_box.dart';
import 'package:poke_book/widgets/profile/title_profile_box.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key, required this.appViewModel}) : super(key: key);

  final AppViewModel appViewModel;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;
    double contentHeight = heightPage - 86.0 - kBottomNavigationBarHeight;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        color: Colors.white,
        width: widthPage,
        height: heightPage,
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          const GeneralToolbar(
            title: 'JuniorSaraiva',
            showUserProfile: true,
          ),
          Container(
            padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
            height: contentHeight,
            width: widthPage,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleProfileBox(
                    title: 'Account information',
                    marginTop: 0.0,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  EditProfileBox(
                    label: 'Name',
                    content: 'JuniorSaraiva',
                    onTap: () {},
                  ),
                  EditProfileBox(
                    label: 'Email',
                    content: 'thuyhu9876@gmail.com',
                    onTap: () {},
                  ),
                  EditProfileBox(
                    label: 'Password',
                    content: '********',
                    onTap: () {},
                  ),
                  const TitleProfileBox(
                    title: 'Pokédex',
                    marginTop: AppSizes.pageVerticalMargin,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  EditPokedexBox(
                    label: 'Mega evolutions',
                    content: 'Enable mega view evolutions.',
                    onTap: (value) {},
                    defaultValue: true,
                  ),
                  EditPokedexBox(
                    label: 'Other forms',
                    content: 'Enable display of shapes pokemon alternatives.',
                    onTap: (value) {},
                    defaultValue: false,
                  ),
                  const TitleProfileBox(
                    title: 'Notifications',
                    marginTop: AppSizes.pageVerticalMargin,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  EditPokedexBox(
                    label: 'Pokedex updates',
                    content: 'New Pokemons, Abilities,information, etc.',
                    onTap: (value) {},
                    defaultValue: false,
                  ),
                  EditPokedexBox(
                    label: 'Pokemon world',
                    content:
                        'Events and information from the world of pokemon.',
                    onTap: (value) {},
                    defaultValue: true,
                  ),
                  const TitleProfileBox(
                    title: 'Language',
                    marginTop: AppSizes.pageVerticalMargin,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  EditProfileBox(
                    label: 'Interface language',
                    content: 'Português (PT-BR)',
                    onTap: () {
                      showLanguageDialog(context);
                    },
                  ),
                  EditProfileBox(
                    label: 'In-game information language',
                    content: 'English (US)',
                    onTap: () {
                      showLanguageDialog(context);
                    },
                  ),
                  const TitleProfileBox(
                    title: 'General',
                    marginTop: AppSizes.pageVerticalMargin,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  const EditProfileBox(
                    label: 'Version',
                    content: '0.1.0',
                    hideIcon: true,
                  ),
                  EditProfileBox(
                    label: 'Terms and conditions',
                    content: 'Everything you need to know.',
                    hideIcon: true,
                    onTap: () => context.pushNamed('term_conditions'),
                  ),
                  EditProfileBox(
                    label: 'Help center',
                    content: 'Need help? Contact us.',
                    hideIcon: true,
                    onTap: () => context.pushNamed('help_center'),
                  ),
                  EditProfileBox(
                    label: 'About us',
                    content: 'Learn more about the app.',
                    hideIcon: true,
                    onTap: () => context.pushNamed('about_us'),
                  ),
                  const TitleProfileBox(
                    title: 'Others',
                    marginTop: AppSizes.pageVerticalMargin,
                    marginBottom: AppSizes.pageHorizontalMargin,
                  ),
                  EditProfileBox(
                    label: 'To go out',
                    content:
                        'You entered as Junior Saraiva. \nDelete this account!',
                    hideIcon: true,
                    onTap: () {
                      showDeleteAccountBottomSheet(context);
                    },
                    labelDanger: true,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: generalBottomNavigationBar(context, 3),
    );
  }
}
