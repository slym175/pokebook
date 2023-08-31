import 'package:flutter/material.dart';
import 'package:poke_book/utils/mock_data.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/form/text_input.dart';
import 'package:poke_book/widgets/general_bottom_navigation_bar.dart';
import 'package:poke_book/widgets/home/filter_dropdown.dart';
import 'package:poke_book/widgets/home/kind_bottom_sheet.dart';
import 'package:poke_book/widgets/home/order_bottom_sheet.dart';
import 'package:poke_book/widgets/home/pokemon_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.appViewModel}) : super(key: key);

  final AppViewModel appViewModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFF2F2F2),
                    width: 1.0,
                  ),
                ),
              ),
              child: AppTextInput(
                controller: searchController,
                hint: "Search Pókemon...",
                isSearch: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      HomeFilterDropdown(
                        title: 'All kinds',
                        onTap: () {
                          showKindSheet(context, MockData().pokemonTypesList);
                        },
                      ),
                      const SizedBox(width: AppSizes.pageHorizontalMargin),
                      HomeFilterDropdown(
                        title: 'Order by',
                        onTap: () {
                          showOrderSheet(context, MockData().orderTypesList);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: AppSizes.pageHorizontalMargin,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - kToolbarHeight - 196,
              child: ListView.separated(
                itemCount: MockData().pokemonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  double itemWidth = MediaQuery.of(context).size.width;
                  return PokemonCart(
                    itemWidth: itemWidth,
                    pokemon: MockData().pokemonsList[index],
                    canDelete: false,
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12.0),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: generalBottomNavigationBar(context, 0),
    );
  }
}
