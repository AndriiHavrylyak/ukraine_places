part of 'places_bloc.dart';

abstract class PlacesEvent extends Equatable {
  const PlacesEvent();
}

class PlacesInitEvent extends PlacesEvent {
  @override

  List<Object?> get props => [];
}

class NewsSearchEvent extends PlacesEvent {
  final String searchText;

  NewsSearchEvent({required this.searchText});

  @override
  List<Object> get props => [searchText];
}