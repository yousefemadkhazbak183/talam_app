import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      fallbackLocale: const Locale("en"),
      supportedLocales: const [Locale("ar"), Locale("en")],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set the design size of your app
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              if (context.locale.languageCode == "en") {
                context.setLocale(const Locale('ar'));
              } else {
                context.setLocale(const Locale("en"));
              }
            },
          ),
          // IconButton(
          //   onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          //   icon: Icon(
          //     theme.brightness == Brightness.dark
          //         ? Icons.light_mode
          //         : Icons.dark_mode,
          //   ),
          // ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('app_name'.tr(), style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
