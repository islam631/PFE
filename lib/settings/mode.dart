import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sider_alhadjar/Provider/provider.dart';
import 'package:sider_alhadjar/generated/l10n.dart';

class Mode extends StatefulWidget {
  const Mode({Key? key}) : super(key: key);

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mode),
      ),
      body:
          Consumer<UiProvider>(builder: (context, UiProvider notifier, child) {
        return Column(
          children: [
            ListTile(
              title: Text(S.of(context).normal_mode),
              leading: Radio(
                value: false,
                groupValue: notifier.isDark,
                onChanged: (value) => notifier.changeTheme(value as bool),
              ),
            ),
            ListTile(
              title: Text(S.of(context).dark_mode),
              leading: Radio(
                value: true,
                groupValue: notifier.isDark,
                onChanged: (value) => notifier.changeTheme(value as bool),
              ),
            ),
          ],
        );
      }),
    );
  }
}
