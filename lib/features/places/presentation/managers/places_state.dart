part of 'places_bloc.dart';

class PlacesState extends Equatable {
  final List<PlacesModel> placesList;
  final bool isProgress;

  const PlacesState({
    this.placesList = const [],
    this.isProgress = false,
  });

  PlacesState copyWith({
    List<PlacesModel>? placesList,
    bool? isProgress,
  }) {
    return PlacesState(
      isProgress: isProgress ?? this.isProgress,
      placesList: placesList ?? this.placesList,
    );
  }

  @override
  List<Object?> get props => [
        placesList,
        isProgress,
      ];
}
