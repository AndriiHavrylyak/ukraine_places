part of 'places_bloc.dart';

abstract class PlacesEvent extends Equatable {
  const PlacesEvent();
}

class PlacesInitEvent extends PlacesEvent {
  final String? pageKey;

  const PlacesInitEvent({required this.pageKey});

  @override
  List<Object?> get props => [pageKey];
}

class NewsSearchEvent extends PlacesEvent {
  final String searchText;

  NewsSearchEvent({required this.searchText});

  @override
  List<Object> get props => [searchText];
}