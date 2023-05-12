import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ukraine_places/generated/locale_keys.g.dart';
import '../../../../core/config/colorz.dart';
import '../../../../core/config/dimens.dart';

class RoutesWidget extends StatefulWidget {
  const RoutesWidget({Key? key}) : super(key: key);

  @override
  State<RoutesWidget> createState() => _RoutesWidgetState();
}

class _RoutesWidgetState extends State<RoutesWidget> {
  final List<String> _selectedPlaces = [];
  final List<Place> _examplePlaces = [
    Place(
      name: 'Софія Київська',
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipO0pcZDUME24b0pxlZNGJc4OJARVMDWmDLNh7OE=s1360-w1360-h1020',
      description:
          'Софія Київська - давньоруський храм, заснований у 1037 році.',
      region: 'Київська область',
      city: 'Київ',
    ),
    Place(
      name: 'Львівська Ратуша',
      imageUrl:
          'https://via-regia.org.ua/wp-content/uploads/2020/11/lvivska-ratusha.jpg',
      description:
          'Львівська Ратуша - історична будівля в самому серці Львова.',
      region: 'Львівська область',
      city: 'Львів',
    ),
    Place(
      name: 'Одеський Оперний театр',
      imageUrl:
          'https://find-way.com.ua/components/com_jshopping/files/img_products/full_odeskii_nac%D1%96onalnii_akadem%D1%96chnii_teatr_operi_ta_baletu_46_4852593_30_7410979_odesa_1823.jpg',
      description: 'Одеський національний академічний театр опери та балету.',
      region: 'Одеська область',
      city: 'Одеса',
    ),
    Place(
      name: 'Арка Дружби Народів',
      imageUrl:
          'https://ua.igotoworld.com/frontend/webcontent/websites/1/images/gallery/24423_800x600____.jpg',
      description:
          'Арка Дружби Народів - пам\'ятник у Києві, встановлений на правому березі Дніпра.',
      region: 'Київська область',
      city: 'Київ',
    ),
    Place(
      name: 'Замок Паланок',
      imageUrl:
          'https://img.pravda.com/images/doc/e/1/e18f1a9-1680x1000palanok.jpg',
      description:
          'Замок Паланок - історичний замок в місті Мукачево, Закарпатська область.',
      region: 'Закарпатська область',
      city: 'Мукачево',
    ),
    Place(
      name: 'Хотинська фортеця',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/73-250-0001_Khotyn_Fortress_RB_18.jpg/1200px-73-250-0001_Khotyn_Fortress_RB_18.jpg',
      description:
          'Хотинська фортеця - відома історична фортеця на південному заході України.',
      region: 'Чернівецька область',
      city: 'Хотин',
    ),
    Place(
      name: 'Палац Потоцьких',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/2/20/%D0%9F%D0%B0%D0%BB%D0%B0%D1%86_%D0%9F%D0%BE%D1%82%D0%BE%D1%86%D1%8C%D0%BA%D0%B8%D1%85._%D0%9B%D1%8C%D0%B2%D1%96%D0%B2_12.jpg',
      description:
          'Палац Потоцьких - величний архітектурний ансамбль у Львові, колишня резиденція Потоцьких.',
      region: 'Львівська область',
      city: 'Львів',
    ),
    Place(
      name: 'Майдан Незалежності',
      imageUrl:
          'https://planetofhotels.com/guide/sites/default/files/styles/paragraph__hero_banner__hb_image__1880bp/public/hero_banner/Maidan_1.jpg',
      description:
          'Майдан Незалежності - центральна площа Києва, місце проведення масових заходів та свят.',
      region: 'Київська область',
      city: 'Київ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.create_route.tr()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'Назва маршруту'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${LocaleKeys.route_example.tr()}:',
                style: const TextStyle(fontSize: 20)),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _examplePlaces.length,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Margins.little),
                          child: Image.network(
                            _examplePlaces[index].imageUrl,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          _examplePlaces[index].name,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${LocaleKeys.available_places.tr()}:',
                style: const TextStyle(fontSize: 20)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _examplePlaces.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(_examplePlaces[index].name),
                  value: _selectedPlaces.contains(_examplePlaces[index].name),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        _selectedPlaces.add(_examplePlaces[index].name);
                      } else {
                        _selectedPlaces.remove(_examplePlaces[index].name);
                      }
                    });
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Зберегти маршрут
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(color: Colorz.primary),
                      elevation: 5, // Додаємо тінь
                      shadowColor: Colors.black.withOpacity(0.3),
                    ),
                    child: const Text(
                      'Зберегти маршрут',
                      style: TextStyle(color: Colorz.primary),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Додаємо відстань між кнопками
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Поділитися маршрутом
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(color: Colorz.primary),
                    elevation: 5, // Додаємо тінь
                    shadowColor: Colors.black.withOpacity(0.3),
                  ),
                  child: const Text(
                    'Поділитися маршрутом',
                    style: TextStyle(color: Colorz.primary),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Place {
  final String name;
  final String imageUrl;
  final String description;
  final String region;
  final String city;

  Place({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.region,
    required this.city,
  });
}
