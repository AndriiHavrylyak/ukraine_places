import 'dart:async';
import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:ukraine_places/features/places/domain/use_cases/get_places.dart';

import '../../../domain/entities/get_places_entity.dart';
import '../../models/places_list_with_key.dart';
import '../../models/places_model.dart';

abstract class PlacesDataSource {
  Future<GetPlacesEntity> getPlaces(GetPlacesParams params);
}

class PlacesDataSourceImpl implements PlacesDataSource {
  @override
  Future<GetPlacesEntity> getPlaces(GetPlacesParams params) async {
    DatabaseReference ref = FirebaseDatabase.instance.ref().child('places');

    Query query = ref.orderByKey();
    if (params.pageKey != null) {
      query = query.startAfter(1);
    } else {
      query = query.limitToFirst(20);
    }
    final dataSnapshot = await query.once();

   if (dataSnapshot!= null) {
      Map<String, dynamic>? result =
          jsonDecode(jsonEncode(dataSnapshot.snapshot.value));

      Iterable<PlacesModelWithKey> itemsIterable = [];
      if (result != null) {
        itemsIterable = result.entries.map((entry) {
          final key = entry.key;
          final element = entry.value;
          final placesModel = PlacesModel.fromJson(element);
          return PlacesModelWithKey(
            key: key,
            placesModel: placesModel,
          );
        });
      }
      return GetPlacesEntity(places: itemsIterable);
    }
    return GetPlacesEntity(places: []);
  }
}
