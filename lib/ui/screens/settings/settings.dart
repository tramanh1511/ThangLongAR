// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({super.key});

//   @override
//   State<SettingsScreen> createState() => _SettingsScreenState();
// }

// class _SettingsScreenState extends State<SettingsScreen> {
//   List locales = [
//     "Vietnam"
//     "English",
//   ];

//   //Language code use to change language based on code
//   List localeCodes = [
//     "vi",
//     "en",
//   ];

//   int currentIndex = 0;

//   bool selectedLocale = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.settings),
//       ),

//       //Now we are going to create language to switch between

//       body: Center(
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: locales.length,
//             itemBuilder: (context,index){
//               //If currentIndex equal index of builder the the bool value gets true
//               selectedLocale = currentIndex == index;
//           return Container(
//             margin: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(8)
//             ),
//             child: ListTile(
//               onTap: (){
//                 // in here we make a click on each language to switch between based on its index
//                 setState(() {
//                   // Sorry my mistake
//                   currentIndex = index;
//                 });
//                 Locales.change(context, localeCodes[currentIndex]);
//               },
//               //So now we want the leading icon to change after selected language
//               leading: Icon(selectedLocale? Icons.check : Icons.language,color: Colors.white,),
//               title: Text(locales[index],style: const TextStyle(color: Colors.white),),
//               trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.white,),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

List<String> createLocales(BuildContext context) {
  return [
    AppLocalizations.of(context)!.vietnamese,
    AppLocalizations.of(context)!.english,
  ];
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> localeCodes = [
    "vi",
    "en",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final locales = createLocales(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: locales.length,
          itemBuilder: (context, index) {
            bool selectedLocale = currentIndex == index;
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFC07F00),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                  _changeLocale(localeCodes[currentIndex]);
                },
                leading: Icon(
                  selectedLocale ? Icons.check : Icons.language,
                  color: Colors.white,
                ),
                title: Text(
                  locales[index],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _changeLocale(String localeCode) {
    MyApp.setLocale(context, Locale(localeCode));
  }
}
