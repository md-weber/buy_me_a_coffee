import 'package:flutter/material.dart';

/// This is the interface for all Themes for BuyMeACoffee
abstract class BuyMeACoffeeThemeData {
  /// Background Color of the Button
  late Color backgroundColor;

  /// Text Color inside the button
  late Color textColor;
}

/// [OrangeTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a orange background and a white text color
class OrangeTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFFFF813F);
  @override
  Color textColor = Colors.white;
}

/// [YellowTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a yellow background and a black text color
class YellowTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFFFFDD00);
  @override
  Color textColor = Colors.black;
}

/// [PurpleTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a Purple background and a white text color
class PurpleTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFFbd5fff);
  @override
  Color textColor = Colors.white;
}

/// [BlackTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a black background and a white text color
class BlackTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = Colors.black;
  @override
  Color textColor = Colors.white;
}

/// [WhiteTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a white background and a black text color
class WhiteTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = Colors.white;
  @override
  Color textColor = Colors.black;
}

/// [BlueTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a blue background and a white text color
class BlueTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFF5F7FFF);
  @override
  Color textColor = Colors.white;
}

/// [TealTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a teal background and a white text color
class TealTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFF79D6B5);
  @override
  Color textColor = Colors.white;
}

/// [RedTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a lightRed background and a white text color
class RedTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFFFF5F5F);
  @override
  Color textColor = Colors.white;
}

/// [PinkTheme] is a implementation of [BuyMeACoffeeThemeData]
/// it has a pink background and a white text color
class PinkTheme implements BuyMeACoffeeThemeData {
  @override
  Color backgroundColor = const Color(0xFFF471FF);
  @override
  Color textColor = Colors.white;
}
