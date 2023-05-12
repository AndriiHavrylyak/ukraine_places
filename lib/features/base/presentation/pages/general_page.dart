import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../manager/bottom_sheet_bloc.dart';
import '../widgets/general_widget.dart';

class GeneralPage extends StatefulWidget {

  const GeneralPage({super.key,});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomSheetBloc>(
          create: (context) => Modular.get<BottomSheetBloc>(),
        ),
      ],
      child: const GeneralWidget(
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
