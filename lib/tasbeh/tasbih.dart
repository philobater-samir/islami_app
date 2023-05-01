import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/My_theme.dart';

class tasbih extends StatelessWidget {
  static const String routeName = 'tasbih';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset('assets/image/head_sebha.png'),
              MaterialButton(
                  onPressed: () {},
                  child: Image.asset('assets/image/body_sebha.png')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'عدد التسبيحات  ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(MyThemeData.lightPrimary)),
            onPressed: () {},
            child: Text(
              '0',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      MyThemeData.lightPrimary)),
              onPressed: () {},
              child: Text(
                'سبحان الله ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
