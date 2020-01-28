<a href="https://www.buymeacoffee.com/sBGXj7Pl4" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

# Buy me a coffee widget

Did you ever needed a widget for buy me a coffee, well here it is.

![Buy me a coffee widget](https://github.com/md-weber/buy_me_a_coffee/blob/master/assets/readme/BuyMeACoffee.gif)

# Important note
Be very careful with using this widget. According to the Google Play Guidelines you are not 
allowed to get payments from external ressources. So a donation button could lead to a 
ban of your app!

This app should only be used in Web or in Stores that allow a donation.

For more information please read this [Reddit Post](https://www.reddit.com/r/androiddev/comments/7cfisr/does_google_unpublish_apps_for_having_a_donate/).

## Getting Started

You have to import

```dart
import 'package:buy_me_a_coffee_widget/buy_me_a_coffee_widget.dart';
```

then you can use the Widget.

```dart
Container(
  width: 217.0,
  child: BuyMeACoffeeWidget(
      sponsorID: "sBGXj7Pl4",
      theme: theme,
  ),
)
```

For a more in depth example please go to the [Example Folder](./example).

