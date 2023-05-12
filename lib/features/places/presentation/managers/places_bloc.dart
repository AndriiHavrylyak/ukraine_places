import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/core/utils/extensions/bloc_extensions.dart';

import '../../data/models/places_list_with_key.dart';
import '../../domain/use_cases/get_places.dart';

part 'places_event.dart';

part 'places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  static const int _pageSize = 20;
  final _getPlaces = Modular.get<GetPlaces>();

  PlacesBloc() : super(const PlacesState()) {
    on<PlacesInitEvent>((event, emit) async {
      await getPlaces(event, emit);
    });
  }

  Future<void> getPlaces(
      PlacesInitEvent event, Emitter<PlacesState> emit) async {

    var getPlacesResult = await _getPlaces(
        GetPlacesParams(pageKey: event.pageKey, pageSize: _pageSize));
    await getPlacesResult.getData().fold((e) {
      emit(const PlacesState(isProgress: false));
      logError(e);
    }, (placesEntity) async {
      var placesList = placesEntity.places;
      emit(PlacesState(
        placesList: placesList!.toList(),
        isProgress: false,
      ));
    });
  }
}
