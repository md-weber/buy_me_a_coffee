import 'package:buy_me_a_coffee_widget/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

/// Url to the buy me a coffee website
const String buyMeACoffeeUrl = "https://www.buymeacoffee.com/";

/// The [BuyMeACoffeeWidget] is the widget. It has a tap event and will trigger as soon someone taps it.
/// It opens up a browser window in the default browser of the device and
/// navigates to the specified UserID on Buy me a coffee.
class BuyMeACoffeeWidget extends StatelessWidget {
  /// Constructor of the BuyMeACoffee Widget
  const BuyMeACoffeeWidget({
    Key? key,
    required this.sponsorID,
    String this.customText = "Buy me a coffee",
    this.textStyle,
    this.backgroundColor,
    this.theme,
  })  : _isIconOnly = false,
        super(key: key);

  const BuyMeACoffeeWidget.iconOnly({
    Key? key,
    required this.sponsorID,
    this.backgroundColor,
    this.theme,
  })  : _isIconOnly = false,
        customText = null,
        textStyle = null,
        super(key: key);

  final bool _isIconOnly;

  /// The id for the user where it should link to.
  final String sponsorID;

  /// Custom text for the widget
  final String? customText;

  /// Overwrites the textStyle of the widget
  final TextStyle? textStyle;

  /// Color of the background if none is provided the [theme] background
  /// will be used or the fallback
  final Color? backgroundColor;

  /// The theme of the widget, it changes the appearence of the Button
  ///
  /// There are multiple themes provided
  /// - [OrangeTheme]
  /// - [YellowTheme]
  /// - [BlackTheme]
  /// - [BlueTheme]
  /// - [PurpleTheme]
  /// - [WhiteTheme]
  ///
  /// Find more [BuyMeACoffeeThemeData]
  final BuyMeACoffeeThemeData? theme;

  @override
  Widget build(BuildContext context) {
    var backgroundColor = this.backgroundColor;
    final textStyle = this.textStyle;
    final customText = this.customText;
    if (theme == null && backgroundColor == null) {
      backgroundColor = const Color(0xFFFF813F);
    } else if (backgroundColor != null) {
      backgroundColor = backgroundColor;
    } else {
      backgroundColor = theme!.backgroundColor;
    }
    final iconWidget = SvgPicture.network(
      "https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg",
      width: 35.0,
    );
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: _isIconOnly ? 51 : double.infinity,
        maxHeight: 51,
      ),
      child: InkWell(
        onTap: () {
          final uri = Uri.parse(buyMeACoffeeUrl + sponsorID);
          launchUrl(uri);
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: _isIconOnly ? 0 : 10.0,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: Colors.transparent),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset.zero, const Offset(1, 1), 1)!,
              )
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: _isIconOnly || customText == null || customText.isEmpty
              ? iconWidget
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    iconWidget,
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        customText,
                        style: textStyle ??
                            GoogleFonts.cookie(
                              color: theme == null
                                  ? Colors.white
                                  : theme!.textColor,
                              fontSize: 28.0,
                              letterSpacing: 0.6,
                            ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
