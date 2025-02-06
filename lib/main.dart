import 'package:b_app/Features/common/main_screen.dart';
import 'package:b_app/Features/common/splash_screen.dart';
import 'package:b_app/Features/home/services/app_database.dart';
import 'package:b_app/Features/home/view/home_screen.dart';
import 'package:b_app/Features/home/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();

  runApp(MyApp(database));
}

class MyApp extends StatelessWidget {
  final AppDatabase database;
  const MyApp(this.database, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => HomeViewModel(database))
      ],
      child: MaterialApp(
        home: BaseScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
