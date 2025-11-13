import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/main_page.dart';
import 'pages/second_page.dart';
import 'resources/bindings.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      getPages: [
        GetPage(name: '/', page: () => const MainPage(), binding: HomeBinding()),
        GetPage(name: '/details', page: () => const SecondPage(), binding: DetailsBinding()),
      ],
      initialRoute: '/',
    );
  }
}
