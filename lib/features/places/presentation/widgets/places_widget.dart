import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/config/colorz.dart';
import '../../../../core/config/dimens.dart';

import '../../data/models/places_list_with_key.dart';
import '../../data/models/places_model.dart';
import '../managers/places_bloc.dart';

class PlacesWidget extends StatefulWidget {
  const PlacesWidget({Key? key}) : super(key: key);

  @override
  PlacesWidgetState createState() => PlacesWidgetState();
}

class PlacesWidgetState extends State<PlacesWidget> {
  final _pagingController = PagingController<int, PlacesModelWithKey>(
    firstPageKey: 0,
  );
  final _bloc = PlacesBloc();
  final int _pageSize = 20;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      PlacesModelWithKey? lastPlacesWithKey;
      if (pageKey != 0) {
        lastPlacesWithKey = _pagingController.itemList!.last;
      }
      _bloc.add(PlacesInitEvent(
          pageKey: pageKey == 0 ? null : _pagingController.itemList!.last.key));
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _bloc.close();
    super.dispose();
  }

  Future<void> _refreshNews() async {
    _pagingController.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<PlacesBloc, PlacesState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state.isProgress) {
            return;
          }
          final isLastPage = state.placesList.length < _pageSize;
          if (isLastPage) {
            _pagingController.appendLastPage(state.placesList);
          } else {
            final nextPageKey = _pagingController.nextPageKey! + _pageSize;
            _pagingController.appendPage(state.placesList, nextPageKey);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RefreshIndicator(
            onRefresh: _refreshNews,
            child: PagedListView<int, PlacesModelWithKey>(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<PlacesModelWithKey>(
                itemBuilder: (context, placesWithKey, index) =>
                    _placesWidget(placesModel: placesWithKey.placesModel),
                firstPageErrorIndicatorBuilder: (context) => const Center(
                  child: Text('Error loading places, please try again.'),
                ),
                noItemsFoundIndicatorBuilder: (context) => const Center(
                  child: Text('No places found.'),
                ),
                newPageErrorIndicatorBuilder: (context) => const Center(
                  child: Text('Error loading more places, please try again.'),
                ),
                newPageProgressIndicatorBuilder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _placesWidget({
  required PlacesModel placesModel,
}) {
  return Padding(
    padding: const EdgeInsets.all(Margins.little),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                const SizedBox(height: Margins.medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
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
