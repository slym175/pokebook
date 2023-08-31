import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/utils/mock_data.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/widgets/favorite/empty_favorite.dart';
import 'package:poke_book/widgets/general_bottom_navigation_bar.dart';
import 'package:poke_book/widgets/general_toolbar.dart';
import 'package:poke_book/widgets/home/pokemon_cart.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key, required this.appViewModel}) : super(key: key);

  final AppViewModel appViewModel;

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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
        child: Column(
          children: <Widget>[
            const GeneralToolbar(title: 'Favorites'),
            MockData().pokemonsEmptyList.isEmpty
                ? EmptyFavorite(contentHeight: contentHeight)
                : Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.pageHorizontalMargin,
                      horizontal: 0.0,
                    ),
                    width: widthPage,
                    height: contentHeight,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: AppSizes.pageHorizontalMargin,
                      ),
                      itemCount: 0,
                      itemBuilder: (BuildContext context, int index) {
                        double itemWidth = MediaQuery.of(context).size.width;
                        return PokemonCart(
                          itemWidth: itemWidth,
                          pokemon: MockData().pokemonsEmptyList[index],
                          canDelete: true,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12.0),
                    ),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: generalBottomNavigationBar(context, 2),
    );
  }
}
