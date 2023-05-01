import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/My_theme.dart';
import 'package:islamy/hadeth_tab/hadeth_name.dart';

class Hadeth extends StatefulWidget {
  static const String routeName = 'hadeth';

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<hadethcontent> hadethnum = [];

  @override
  Widget build(BuildContext context) {
    if (hadethnum.isEmpty) {
      loadHadethFile();
    }

    return Center(
      child: Column(
        children: [
          Image.asset('assets/image/hadeth_image.png'),
          Divider(
            color: MyThemeData.lightPrimary,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth_name,
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Divider(
            color: MyThemeData.lightPrimary,
            thickness: 3,
          ),
          Expanded(
            child: hadethnum.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: MyThemeData.lightPrimary,
                        thickness: 2,
                      );
                    },
                    itemBuilder: (context, index) {
                      return hadethName(hadeth: hadethnum[index]);
                    },
                    itemCount: hadethnum.length,
                  ),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String fileContant =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = fileContant.split('#\r\n');
    for (int i = 0; i < allHadethList.length; i++) {
      List<String> singleHadeth = allHadethList[i].split('\n');
      String title = singleHadeth[0];
      singleHadeth.removeAt(0);
      hadethcontent hadeth = hadethcontent(title: title, content: singleHadeth);
      hadethnum.add(hadeth);
    }
    setState(() {});
  }
}

class hadethcontent {
  String title;

  List<String> content;

  hadethcontent({required this.title, required this.content});
}
