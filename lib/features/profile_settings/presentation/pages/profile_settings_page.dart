
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../manager/setting_profile_bloc.dart';
import '../manager/setting_profile_event.dart';
import '../widgets/profile_settings_widget.dart';

class ProfileSettingsPage extends StatelessWidget {


  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingProfileBloc>(
      create: (context) => Modular.get<SettingProfileBloc>()..add(SettingProfileInitEvent()),
      child: const ProfileSettingsWidget(
      ),
    );
  }
}
