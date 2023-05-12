part of 'places_bloc.dart';

class PlacesState extends Equatable {
  final List<PlacesModelWithKey> placesList;
  final bool isProgress;

  const PlacesState({
    this.placesList = const [],
    this.isProgress = false,
  });

  PlacesState copyWith({
    List<PlacesModelWithKey>? placesList,
    bool? isProgress,
  }) {
    return PlacesState(
      isProgress: isProgress ?? this.isProgress,
      placesList: placesList ?? this.placesList,
    );
  }

  @override
  List<Object?> get props => [placesList, isProgress];
}
