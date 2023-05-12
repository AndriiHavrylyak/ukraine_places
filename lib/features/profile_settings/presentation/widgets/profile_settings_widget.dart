import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/common/presentation/widgets/actions_sheet.dart';
import '../../../../generated/locale_keys.g.dart';
import '../manager/setting_profile_bloc.dart';
import '../manager/setting_profile_event.dart';
import '../manager/setting_profile_state.dart';

class ProfileSettingsWidget extends StatefulWidget {
  const ProfileSettingsWidget({
    super.key,
  });

  @override
  State<ProfileSettingsWidget> createState() => _ProfileSettingsWidgetState();
}

class _ProfileSettingsWidgetState extends State<ProfileSettingsWidget> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.setting_profile.tr()),
      ),
      body: BlocBuilder<SettingProfileBloc, SettingProfileState>(
          builder: (context, state) {
            String currentTheme;

            switch (state.themeMode) {
              case ThemeMode.system:
                currentTheme = LocaleKeys.system_theme.tr();
                break;
              case ThemeMode.light:
                currentTheme = LocaleKeys.light_theme.tr();
                break;
              case ThemeMode.dark:
                currentTheme = LocaleKeys.dark_theme.tr();
                break;
            }

            return Column(
              children: [
                ListTile(
                  title: Text(LocaleKeys.application_theme.tr()),
                  subtitle: Text(currentTheme),
                  trailing: IconButton(
                    icon: const Icon(Icons.color_lens),
                    onPressed: () => showCommonActionSheet(
                      context,
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            BlocProvider.of<SettingProfileBloc>(context).add(
                                SettingProfileChangeThemeEvent(mode: ThemeMode.system));
                            Navigator.pop(context);

                          },
                          child: Text(LocaleKeys.system_theme.tr()),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            BlocProvider.of<SettingProfileBloc>(context).add(
                                SettingProfileChangeThemeEvent(mode: ThemeMode.light));
                            Navigator.pop(context);

                          },
                          child: Text(LocaleKeys.light_theme.tr()),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            BlocProvider.of<SettingProfileBloc>(context).add(
                                SettingProfileChangeThemeEvent(mode: ThemeMode.dark));
                            Navigator.pop(context);

                          },
                          child: Text(LocaleKeys.dark_theme.tr()),
                        ),
                        CupertinoActionSheetAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(LocaleKeys.close.tr()),
                        ),
                      ],
                      title: LocaleKeys.change_theme.tr(),
                    ),
                  ),
                ),
            ListTile(
              title: Text(LocaleKeys.application_language.tr()),
              subtitle: Text(context.locale.toString()),
              trailing: IconButton(
                icon: const Icon(Icons.language),
                onPressed: () => showCommonActionSheet(
                  context,
                  actions: [
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        context.setLocale(const Locale('en'));
                        Navigator.pop(context);
                      },
                      child: const Text('English'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        context.setLocale(const Locale('uk'));
                        Navigator.pop(context);
                      },
                      child: const Text('Ukrainian'),
                    ),
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(LocaleKeys.close.tr()),
                    ),
                  ],
                  title: LocaleKeys.change_language.tr(),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
