import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/core/utils/extensions/bloc_extensions.dart';
import 'package:ukraine_places/features/places/data/models/places_model.dart';

import '../../domain/use_cases/get_places.dart';

part 'places_event.dart';

part 'places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  final _getPlaces = Modular.get<GetPlaces>();

  PlacesBloc() : super(const PlacesState()) {
    on<PlacesInitEvent>((event, emit) async {
      await getPlaces(event, emit);
    });
  }

  Future<void> getPlaces(
      PlacesInitEvent event, Emitter<PlacesState> emit) async {
    var getPlacesResult =
        await _getPlaces(const GetPlacesParams(region: 'all'));
    await getPlacesResult.getData().fold((e) {
      emit(const PlacesState(isProgress: false));
      emit(state.copyWith(isProgress: false));
      logError(e);
    }, (placesEntity) async {
      emit(state.copyWith(
          isProgress: false, placesList: placesEntity.places.places));
    });
  }
}
