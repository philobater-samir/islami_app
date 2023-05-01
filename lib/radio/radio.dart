import 'package:flutter/material.dart';

class radio extends StatelessWidget {
  static const String routeName = 'radio';

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('assets/image/radio_image.png'),
      Text(
        'اذاعة القرآن الكريم ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: Image.asset('assets/image/back_icon.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: Image.asset('assets/image/play_icon.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: Image.asset('assets/image/next_icon.png'),
            ),
          ),
        ],
      )
    ]);
  }
}
