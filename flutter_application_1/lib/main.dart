import 'package:flutter/material.dart';
import 'package:flutter_application_1/splashScreen/first.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  runApp(
  //   EasyLocalization(
  //     supportedLocales: [Locale('en'), Locale('ar')],
  //     path: 'assets/translations', // <-- change the path of the translation files 
  //     fallbackLocale: Locale('en'),
      MyApp()
  //  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
// https://www.figma.com/design/L8WNAP8y6pEzkgPMd8I98m/Pixel-True---Food-Delivery-UI-Kit?node-id=0-1&t=0iQwVJupNUbY2lNh-1
