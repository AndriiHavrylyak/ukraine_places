import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/config/colorz.dart';
import '../../../../core/config/dimens.dart';
import '../../../../core/constants/routes.dart';
import '../../../../generated/locale_keys.g.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                Modular.to.pushNamed(
                  ModuleRoutes.base + ModuleRoutes.profileSettings + Routes.root,
                );
                ///this for updating widget if changed locale, to rebuild it
                if (mounted) {
                  setState(() {});
                }
              },
              icon: const Icon(CupertinoIcons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/b/%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BC%D0%B5%D1%81%D1%82%D0%BE%D0%B7%D0%B0%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8F-%D0%BF%D1%80%D0%BE%D1%84%D0%B8%D0%BB%D1%8F-%D1%81%D0%B5%D1%80%D1%8B%D0%B9-%D1%81%D0%B8%D0%BB%D1%83%D1%8D%D1%82-%D0%BD%D0%B5%D1%82-%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B8-173998002.jpg'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ім\'я користувача',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${LocaleKeys.email.tr()}: user@example.com',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${LocaleKeys.phone_number.tr()}: +380 12 345 67 89',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                LocaleKeys.my_journeys.tr(),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ).tr(),
            ),
            const SizedBox(height: 10),
            const TravelWidget(),
          ],
        ),
      ),
    );
  }
}

class TravelWidget extends StatelessWidget {
  const TravelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> travels = [
      'Подорож до Києва',
      'Відвідування Львова',
      'Тур по Одеському Оперному театру',
      'Екскурсія в Закарпаття',
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.location_pin, color: Colors.blue),
          title: Text(
            travels[index],
            style: const TextStyle(fontSize: 18),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: travels.length,
    );
  }
}
