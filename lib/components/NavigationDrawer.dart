import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sider_alhadjar/generated/l10n.dart';

class NavigatiorDrawer extends StatelessWidget {
  const NavigatiorDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenu(context),
            ],
          ),
        ),
      );
}

Widget buildHeader(BuildContext context) => Container(
      color: Color.fromARGB(255, 53, 53, 53),
      padding: EdgeInsets.all(30),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('assets/images/icon_launcher.png'),
            backgroundColor: Color.fromARGB(255, 114, 114, 114),
          ),
        ],
      ),
    );

Widget buildMenu(BuildContext context) => Container(
      padding: EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text(S.of(context).acceuil),
            onTap: () {
              Navigator.of(context).pushNamed("NavigationPage");
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              S.of(context).contacts,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {},
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/icons/facebook_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  title: Text(S.of(context).facebook),
                  onTap: () async {
                    var url =
                        'https://www.facebook.com/SiderElHadjarOfficielle/?locale=fr_FR';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    }
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/icons/youtube_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  title: Text(S.of(context).youtube),
                  onTap: () async {
                    var url = 'https://www.youtube.com/@SIDERELHADJAR';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    }
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/icons/twitter_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  title: Text(S.of(context).twitter),
                  onTap: () async {
                    var url = 'https://twitter.com/siderelhadjar?lang=fr';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    }
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(S.of(context).settings),
            onTap: () {
              Navigator.of(context).pushNamed("Settings");
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(S.of(context).exit),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(S.of(context).confirmation),
                    content: Text(S.of(context).areYouSureExit),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(S.of(context).cancel),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          SystemNavigator.pop();
                        },
                        child: Text(S.of(context).confirm),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
