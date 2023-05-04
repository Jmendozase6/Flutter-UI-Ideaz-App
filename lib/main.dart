import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watch_app/provider/dark_theme.dart';
import 'package:watch_app/routes/app_routes.dart';
import 'package:watch_app/screens/screens.dart';
import 'package:watch_app/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder:
          (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          return ChangeNotifierProvider<DarkThemeNotifier>.value(
            value: DarkThemeNotifier(snapshot.data!),
            child: const _MyApp(),
          );
        }
        return Container();
      },
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<DarkThemeNotifier>(context).isDarkMode;

    return MaterialApp(
      title: 'Ideas App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: AppRoutes.routes,
      theme: isDarkMode ? setDarkTheme : setLightTheme,
    );
  }
}
