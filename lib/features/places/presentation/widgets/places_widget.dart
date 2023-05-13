import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/places/data/models/places_model.dart';

import '../../../../core/config/colorz.dart';
import '../../../../core/config/dimens.dart';
import '../../../../core/constants/routes.dart';
import '../../../../generated/locale_keys.g.dart';
import '../managers/places_bloc.dart';

class PlacesWidget extends StatelessWidget {
  const PlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.places.tr()),
      ),
      body: BlocBuilder<PlacesBloc, PlacesState>(
        builder: (context, state) {
          if (state.isProgress) {
            return const CircularProgressIndicator();
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            primary: false,
            shrinkWrap: true,
            itemCount: state.placesList.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildTile(
                context: context,
                placesModel: state.placesList[index],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTile({
    required BuildContext context,
    required PlacesModel placesModel,
  }) {
    return Padding(
      padding: const EdgeInsets.all(Margins.little),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Margins.little),
              child: Image.network(placesModel.images),
            ),
            Padding(
              padding: const EdgeInsets.all(Margins.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placesModel.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: Margins.small),
                  Text(
                    placesModel.shortDescription,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: Margins.small),
                  Text(
                    '${placesModel.location.region}, ${placesModel.location.settlement}',
                    style: const TextStyle(
                        fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: Margins.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Modular.to.pushNamed(
                                ModuleRoutes.base +
                                    ModuleRoutes.placeDetails,
                                arguments: placesModel);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colorz.primary,
                          ),
                          icon: const Icon(Icons.info_outline),
                          label: const Text(
                            'Детальніше',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(width: Margins.tiny),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Дії для планування маршруту
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colorz.primary,
                          ),
                          icon: const Icon(Icons.map),
                          label: const Text(
                            'Планувати маршрут',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
