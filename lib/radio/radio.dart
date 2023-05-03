import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class radio extends StatelessWidget {
  static const String routeName = 'radio';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('assets/image/radio_image.png'),
      Text(
        'اذاعة القرآن الكريم ',
        style: provider.appTheme == ThemeMode.dark
            ? TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)
            : TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: provider.appTheme == ThemeMode.dark
                  ? Image.asset('assets/image/back_icon_dark.png')
                  : Image.asset('assets/image/back_icon.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: provider.appTheme == ThemeMode.dark
                  ? Image.asset('assets/image/next_icon_dark.png')
                  : Image.asset('assets/image/play_icon.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: provider.appTheme == ThemeMode.dark
                  ? Image.asset('assets/image/play_icon_dark.png')
                  : Image.asset('assets/image/next_icon.png'),
            ),
          ),
        ],
      )
    ]);
  }
}
