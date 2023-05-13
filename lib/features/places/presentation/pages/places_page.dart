
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../managers/places_bloc.dart';
import '../widgets/places_widget.dart';

class  PlacesPage extends StatelessWidget {
  const PlacesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlacesBloc>(
      create: (context) =>
          Modular.get<PlacesBloc>()..add(PlacesInitEvent()),
      child: const PlacesWidget(),
    );
  }
}
