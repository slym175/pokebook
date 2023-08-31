import 'package:flutter/material.dart';
import 'package:poke_book/utils/models/main_generation.dart';
import 'package:poke_book/utils/models/region.dart';
import 'package:poke_book/utils/models/region_name.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/general_bottom_navigation_bar.dart';
import 'package:poke_book/widgets/general_toolbar.dart';
import 'package:poke_book/widgets/region/region_cart.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({Key? key, required this.appViewModel}) : super(key: key);

  final AppViewModel appViewModel;

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  late List<Region> regionList = [
    Region(
      id: 1,
      name: 'kanto',
      names: [
        Name(
          name: 'Kanto',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-i',
        url: 'https://pokeapi.co/api/v2/generation/1/',
      ),
    ),
    Region(
      id: 2,
      name: 'johto',
      names: [
        Name(
          name: 'Johto',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-ii',
        url: 'https://pokeapi.co/api/v2/generation/2/',
      ),
    ),
    Region(
      id: 3,
      name: 'hoenn',
      names: [
        Name(
          name: 'Hoenn',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-iii',
        url: 'https://pokeapi.co/api/v2/generation/3/',
      ),
    ),
    Region(
      id: 4,
      name: 'sinnoh',
      names: [
        Name(
          name: 'Sinnoh',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-iv',
        url: 'https://pokeapi.co/api/v2/generation/4/',
      ),
    ),
    Region(
      id: 5,
      name: 'unova',
      names: [
        Name(
          name: 'Unova',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-v',
        url: 'https://pokeapi.co/api/v2/generation/5/',
      ),
    ),
    Region(
      id: 6,
      name: 'kalos',
      names: [
        Name(
          name: 'Kalos',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-vi',
        url: 'https://pokeapi.co/api/v2/generation/6/',
      ),
    ),
    Region(
      id: 7,
      name: 'alola',
      names: [
        Name(
          name: 'Alola',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-vii',
        url: 'https://pokeapi.co/api/v2/generation/7/',
      ),
    ),
    Region(
      id: 8,
      name: 'galar',
      names: [
        Name(
          name: 'Galar',
          language: MainGeneration(
            name: 'en',
            url: 'https://pokeapi.co/api/v2/language/9/',
          ),
        )
      ],
      mainGeneration: MainGeneration(
        name: 'generation-viii',
        url: 'https://pokeapi.co/api/v2/generation/8/',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;
    double contentHeight = heightPage - 84.0 - kBottomNavigationBarHeight;
    double regionHeight =
        (widthPage - AppSizes.pageHorizontalMargin * 2) / 3.21568;
    double regionWidth = (widthPage - AppSizes.pageHorizontalMargin * 2);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        color: Colors.white,
        width: widthPage,
        height: heightPage,
        child: Column(children: <Widget>[
          const GeneralToolbar(title: 'Regions'),
          Container(
            width: widthPage,
            height: contentHeight,
            padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) => RegionCart(
                cardWidth: regionWidth,
                cardHeight: regionHeight,
                region: regionList[index],
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 12.0),
              itemCount: regionList.length,
            ),
          ),
        ]),
      ),
      bottomNavigationBar: generalBottomNavigationBar(context, 1),
    );
  }
}
