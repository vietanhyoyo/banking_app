import 'package:banking_app/config/routes/application.dart';
import 'package:banking_app/config/routes/routes.dart';
import 'package:banking_app/config/theme/app_themes.dart';
import 'package:banking_app/features/shopping/data/data_sources/local/storage.dart';
import 'package:banking_app/injection_container.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  initializeDependencies();

  WidgetsFlutterBinding.ensureInitialized();
  Storage();

  /// Init router
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return ValueListenableBuilder<ThemeMode>(
            valueListenable: AppTheme.themeNotifier,
            builder: (_, ThemeMode currentMode, __) {
              return MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: AppTheme.currentTheme.lightTheme,
                darkTheme: AppTheme.currentTheme.lightTheme,
                themeMode: currentMode,
                onGenerateRoute: Application.router?.generator,
                initialRoute: Routes.login,
              );
            },
          );
        });
  }
}
