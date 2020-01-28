import 'package:buy_me_a_coffee_widget/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String buyMeACoffeeUrl = "https://www.buymeacoffee.com/";

class BuyMeACoffeeWidget extends StatelessWidget {
  final String sponsorID;
  final String customText;
  final TextStyle textStyle;
  final Color backgroundColor;
  final BuyMeACoffeeThemeData theme;

  const BuyMeACoffeeWidget({
    Key key,
    @required this.sponsorID,
    this.customText = "Buy me a coffee",
    this.textStyle,
    this.backgroundColor,
    this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var backgroundColor;
    var textStyle;

    if (theme == null && backgroundColor == null) {
      backgroundColor = Color(0xFFFF813F);
    } else if (backgroundColor != null) {
      backgroundColor = backgroundColor;
    } else {
      backgroundColor = theme.backgroundColor;
    }

    return GestureDetector(
      onTap: () async {
        var urlString = buyMeACoffeeUrl + sponsorID;
        if (await canLaunch(urlString)) {
          await launch(urlString);
        } else {
          throw "BuyMeACoffeWidget - Something went wrong!";
        }
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 217.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
          height: 51.0,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: Colors.transparent, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.network(
                "https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg",
                width: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  customText,
                  style: textStyle == null
                      ? GoogleFonts.cookie(
                          color: theme == null ? Colors.white : theme.textColor,
                          fontSize: 28.0,
                          letterSpacing: 0.6,
                        )
                      : textStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
