import 'package:buy_me_a_coffee_widget/buy_me_a_coffee_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// BuyMeACoffee Example App
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BuyMeACoffeeThemeData theme = OrangeTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Buy me a coffee Widget"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuyMeACoffeeWidget(
                      sponsorID: "flutterexp",
                      theme: theme,
                    ),
                    const SizedBox(height: 8),
                    BuyMeACoffeeWidget.iconOnly(
                      sponsorID: "flutterexp",
                      theme: theme,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ThemeSelector(
                        color: const Color(0xFFFF813F),
                        onTap: () {
                          setState(() {
                            theme = OrangeTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: const Color(0xFFFFDD00),
                        onTap: () {
                          setState(() {
                            theme = YellowTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: const Color(0xFFbd5fff),
                        onTap: () {
                          setState(() {
                            theme = PurpleTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: Colors.black,
                        onTap: () {
                          setState(() {
                            theme = BlackTheme();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ThemeSelector(
                        color: Colors.white,
                        onTap: () {
                          setState(() {
                            theme = WhiteTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: const Color(0xFF79D6B5),
                        onTap: () {
                          setState(() {
                            theme = TealTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: const Color(0xFFFF5F5F),
                        onTap: () {
                          setState(() {
                            theme = RedTheme();
                          });
                        },
                      ),
                      ThemeSelector(
                        color: const Color(0xFFF471FF),
                        onTap: () {
                          setState(() {
                            theme = PinkTheme();
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// ThemeSelectorWidget - Creates a Button with the color
class ThemeSelector extends StatelessWidget {
  /// Constructor of the ThemeSelector
  const ThemeSelector({Key? key, required this.onTap, required this.color})
      : super(key: key);

  /// Tap on the ThemeSelector
  final VoidCallback onTap;

  /// Color of the different Themes
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 64.0,
          height: 64.0,
          padding: const EdgeInsets.all(1.0),
          decoration: const BoxDecoration(
            color: Colors.black, // border color
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(backgroundColor: color),
        ),
      ),
    );
  }
}
