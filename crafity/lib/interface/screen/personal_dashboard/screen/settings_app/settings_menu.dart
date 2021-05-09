import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/auth_page/forms/verify_account_page.dart';
import 'package:crafity/interface/screen/personal_dashboard/forms/forms.dart';
import 'package:crafity/interface/screen/personal_dashboard/widgets/delete_user_alert.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsMenuPage extends StatefulWidget {
  @override
  _SettingsMenuPageState createState() => _SettingsMenuPageState();
}

class _SettingsMenuPageState extends State<SettingsMenuPage> {
  bool isLarge;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isLarge = ResponsiveLayout.isLargeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: ResponsiveLayout(
          largeScreen: SingleChildScrollView(
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
              children: List.generate(
                settingList.length,
                (idx) => SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(settingList[idx].icon),
                        title: Text(
                          settingList[idx].title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        enabled: false,
                      ),
                      ListBody(
                        children: settingList[idx]
                            .menuList
                            .map((item) => item)
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          smallScreen: ListView.builder(
            itemBuilder: (ctx, idx) => Column(
              children: [
                ListTile(
                  leading: Icon(settingList[idx].icon),
                  title: Text(
                    settingList[idx].title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  enabled: false,
                ),
                ListBody(
                  children:
                      settingList[idx].menuList.map((item) => item).toList(),
                ),
              ],
            ),
            itemCount: settingList.length,
          ),
        ),
      ),
    );
  }

  void openReauthPage(String routeName,
      {Widget webPage, PageRouteInfo mobilePage}) {
    if (isLarge) {
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: 'janu_jana/settings/reauthenticate'),
        builder: (_) => BlocProvider(
          create: (_) => context.read<UserBloc>(),
          child: ReAuthAccountPage(
            popUpPage: webPage,
            routeName: routeName,
          ),
        ),
      );
    } else {
      context.router.push(ReAuthAccountRoute(redirectPage: mobilePage));
    }
  }

  void _goToChangeEmailPage() {
    openReauthPage('change_account',
        webPage: ChangeEmailPage(), mobilePage: ChangeEmailRoute());
  }

  void _goToUpdatePswPage() {
    openReauthPage(
      'update_password',
      webPage: FormScreen(
        useBackBtn: false,
        form: ResetPasswordPage(
          uid: 'l9u9h3hd9j2kdkdetnk',
        ),
      ),
      mobilePage: ResetPswFromSettings(
        uid: 'h90n103ryb4inkbakjgjsh8',
      ),
    );
  }

  void _goToUpdateHpNumPage() {
    if (isLarge) {
      showDialog(
        context: context,
        routeSettings:
            RouteSettings(name: 'janu_jana/settings/update_phone_number'),
        builder: (_) => BlocProvider.value(
          value: context.read<UserBloc>(),
          child: VerifyAccountPage(),
        ),
      );
    } else {
      context.router.push(UpdatePhoneNumberRoute());
    }
  }

  void _goToAddCreditPage() {
    if (isLarge) {
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: 'janu_jana/create_credit'),
        builder: (_) => CreditCardPage(),
      );
    } else {
      context.router.push(CreditCardRoute(creditEvent: 'create_credit'));
    }
  }

  void _onAccountDeleted() {
    showDialog(
      context: context,
      routeSettings: RouteSettings(name: 'janu_jana/settings/delete_user'),
      builder: (_) => BlocProvider.value(
        value: context.read<UserBloc>(),
        child: DeleteUserAlert(),
      ),
    );
  }

  List<SettingEntity> get settingList => [
        SettingEntity(
          title: 'General',
          icon: Icons.perm_data_setting,
          menuList: [
            ListTile(
              title: Text(
                'Change Account',
                style: TextStyle(fontSize: 16),
              ),
              onTap: _goToChangeEmailPage,
            ),
            ListTile(
              title: Text(
                'Reset Password',
                style: TextStyle(fontSize: 16),
              ),
              onTap: _goToUpdatePswPage,
            ),
            ListTile(
              title: Text(
                'Verify Account',
                style: TextStyle(fontSize: 16),
              ),
              onTap: _goToUpdateHpNumPage,
            ),
            ListTile(
              title: Text(
                'Add Credit Card',
                style: TextStyle(fontSize: 16),
              ),
              onTap: _goToAddCreditPage,
            ),
            ListTile(
              title: Text(
                'Delete Account',
                style: TextStyle(fontSize: 16),
              ),
              onTap: _onAccountDeleted,
            ),
            ListTile(
              title: Text(
                'Theme',
                style: TextStyle(fontSize: 16),
              ),
              trailing: IconButton(
                icon: Icon(Icons.brightness_2),
                color: Colors.grey,
                onPressed: () {},
              ),
              onTap: () {},
            ),
            ExpansionTile(
              title: Text(
                'Language',
                style: TextStyle(fontSize: 16),
              ),
              children: <Widget>[
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (newVal) {},
                  title: Text('English'),
                ),
                RadioListTile(
                  value: false,
                  groupValue: false,
                  onChanged: (newVal) {},
                  title: Text('Indonesia'),
                ),
              ],
            ),
          ],
        ),
        SettingEntity(
          title: 'Notification',
          icon: Icons.notifications,
          menuList: [
            SwitchListTile(
              title: Text(
                'Suggestion Product',
                style: TextStyle(fontSize: 16),
              ),
              value: true,
              onChanged: (val) {},
            ),
            SwitchListTile(
              title: Text(
                'Product Updated',
                style: TextStyle(fontSize: 16),
              ),
              value: false,
              onChanged: (val) {},
            ),
            SwitchListTile(
              title: Text(
                'Event Updated',
                style: TextStyle(fontSize: 16),
              ),
              value: true,
              onChanged: (val) {},
            ),
            SwitchListTile(
              title: Text(
                'Product News',
                style: TextStyle(fontSize: 16),
              ),
              value: false,
              onChanged: (val) {},
            ),
            SwitchListTile(
              title: Text(
                'Direct Message',
                style: TextStyle(fontSize: 16),
              ),
              value: true,
              onChanged: (val) {},
            ),
          ],
        ),
        SettingEntity(
          title: 'Other',
          icon: Icons.devices_other,
          menuList: [
            ListTile(
              title: Text(
                'Help Center',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'About Crafity',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Get Apps',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Terms Condition',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Partner Preference',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
          ],
        ),
      ];
}

class SettingEntity {
  SettingEntity({this.icon, this.title, this.menuList});

  final IconData icon;
  final String title;
  final List<Widget> menuList;
}
