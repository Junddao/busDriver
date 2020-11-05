import 'package:bus_driver/route.dart';
import 'package:bus_driver/view/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'J T B',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //  ChangeNotifierProvider<UserProfileProvider>(
        //     create: (_) => UserProfileProvider(),
        //   ),
      ],
      child: MaterialApp(
        title: 'BusDriver',
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: MColors.tomato,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: RootPage(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routers.generateRoute,
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
