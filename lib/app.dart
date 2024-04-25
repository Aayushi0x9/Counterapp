import 'headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          onPrimary: Color(0xff5C8374),
          primary: Color(0xffBED7DC),
        ),
        primaryColor: Color(0xffBED7DC),
        backgroundColor: Color(0xffBED7DC),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffB3C8CF),
          foregroundColor: Color(0xffBED7DC),
          actionsIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          titleSpacing: 1,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 23,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          caption: TextStyle(color: Colors.black),
        ),
        colorScheme: ColorScheme.light(
          onPrimary: Colors.black,
          primary: Color(0xff9EB8D9),
        ),
        primaryColor: Color(0xffEEEEEE),
        backgroundColor: Color(0xff393E46),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff222831),
          foregroundColor: Colors.black87,
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleSpacing: 1,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 23,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
