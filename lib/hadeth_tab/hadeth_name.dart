import 'package:flutter/material.dart';
import 'package:islamy/hadeth_tab/hadeth.dart';
import 'package:islamy/hadeth_tab/hadeth_page.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class hadethName extends StatelessWidget {
  hadethcontent hadeth;

  hadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(hadethPage.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: provider.appTheme == ThemeMode.dark
            ? TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25)
            : TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
