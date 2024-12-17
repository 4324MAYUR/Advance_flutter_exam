import 'package:advance_flutter_app/routes/approutes.dart';
import 'package:advance_flutter_app/screen/home/provider/covidprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CovidProvider()
          ..covidDataGet(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AllRoutes.appRoutes,
      ),
    );
  }
}

