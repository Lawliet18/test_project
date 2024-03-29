import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/extensions/theme_extension.dart';
import 'package:test_app/core/localization/generated/codegen_loader.g.dart';
import 'package:test_app/core/router/app_router.gr.dart';
import 'package:test_app/presentation/pages/photos/photos_page.dart';

enum MainSubPage { home, list, wind, balance }

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController();

  MainSubPage _currentSubPage = MainSubPage.home;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appBarMainPage.tr(context: context)),
        actions: [
          IconButton(
            onPressed: () => _onSettingsTap(context),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          PhotosPage(),
          PhotosPage(),
          PhotosPage(),
          PhotosPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNavIconTap,
        currentIndex: _currentSubPage.index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.wind_power), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_sharp),
            label: '',
          ),
        ],
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: theme.colorScheme.primary.withOpacity(.4),
        type: BottomNavigationBarType.shifting,
      ),
    );
  }

  void _onPageChanged(int value) {
    setState(() {
      _currentSubPage = MainSubPage.values[value];
    });
  }

  void _onNavIconTap(int value) {
    _currentSubPage = MainSubPage.values[value];
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
    );
  }

  void _onSettingsTap(BuildContext context) =>
      context.router.push(SettingsRoute());
}
