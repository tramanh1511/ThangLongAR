import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class DestinationModel {
  String title;
  String description;
  List<String> images;

  DestinationModel({
    required this.title,
    required this.description,
    required this.images,
  });

}

// Create a list to hold all destination models
List<DestinationModel> createDestinations(BuildContext context) {
  return [
  DestinationModel(
    title: AppLocalizations.of(context)!.cotCo1,
    description: AppLocalizations.of(context)!.cotCo2,
    images: [
      'assets/image/CotCo/CotCoHN1.jpg',
      'assets/image/CotCo/CotCoHN2.jpg',
      'assets/image/CotCo/CotCoHN3.jpg',
    ],
  ),
  DestinationModel(
    title: AppLocalizations.of(context)!.doanMon1,
    description: AppLocalizations.of(context)!.doanMon2,
    images: [
      'assets/image/DoanMon/1.jpg',
      'assets/image/DoanMon/2.jpg',
      'assets/image/DoanMon/3.jpg',
      'assets/image/DoanMon/4.jpg',
    ],
  ),

  DestinationModel(
    title: AppLocalizations.of(context)!.kinhThien1, 
    description: AppLocalizations.of(context)!.kinhThien2, 
    images: [
      'assets/image/KinhThien/1.jpg',
      'assets/image/KinhThien/2.jpg',
      'assets/image/KinhThien/3.jpg',
      'assets/image/KinhThien/4.jpg',
    ],
  ),

  DestinationModel (
    title: AppLocalizations.of(context)!.hauLau1,
    description: AppLocalizations.of(context)!.hauLau2,
    images: [
      'assets/image/HauLau/1.jpg',
      'assets/image/HauLau/2.jpg',
      'assets/image/HauLau/3.jpg',
    ],
  ),
  DestinationModel(
    title: AppLocalizations.of(context)!.bacMon1,
    description: AppLocalizations.of(context)!.bacMon2,
    images: [
      'assets/image/BacMon/1.jpg',
      'assets/image/BacMon/2.jpg',
      'assets/image/BacMon/3.jpg',
      'assets/image/BacMon/4.png',
    ],
  ),
  DestinationModel(
    title: AppLocalizations.of(context)!.d671,
    description: AppLocalizations.of(context)!.d672,
    images: [
      'assets/image/D67/1.jpg',
      'assets/image/D67/2.jpg',
      'assets/image/D67/3.jpg',
      'assets/image/D67/4.jpg',
    ],
  ),
  DestinationModel(
    title: AppLocalizations.of(context)!.khaoCo1,
    description: AppLocalizations.of(context)!.khaoCo2,
    
    images: [
      'assets/image/KhaoCo/1.jpg',
      'assets/image/KhaoCo/2.jpg',
      'assets/image/KhaoCo/3.jpg',
      'assets/image/KhaoCo/4.jpg',
    ],
  )
  ];
}
