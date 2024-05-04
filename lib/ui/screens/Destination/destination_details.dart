// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ar_app/model/destination/destinations.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DestinationDetailsScreen extends StatelessWidget {
  final DestinationModel destination;
  const DestinationDetailsScreen({super.key,required this.destination});

  @override
  Widget build(BuildContext context) {
    // Load the description for the destination instance
    destination.loadDescription();

    return Scaffold(
      appBar: AppBar(
        title: Text(destination.title),
        backgroundColor: const Color(0xFFC07F00),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                children: destination.images
                   .map((image) => Image.asset(image, fit: BoxFit.cover))
                   .toList(),
              ),
            ),
            const SizedBox(height: 16),
            // Dots Indicator
            DotsIndicator(
              dotsCount: destination.images.length, // Number of dots
              position: 0, // Current page index
              decorator: DotsDecorator(
                color: Colors.grey, // Default dot color
                activeColor: const Color(0xFFC07F00), // Selected dot color
                activeSize: const Size(16, 16), // Selected dot size
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // Selected dot shape
              ),
            ),
            const SizedBox(height: 16),
            Text(
             destination.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),                
              ),
            ),
            const SizedBox(height: 8),
            Text(
              destination.description,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}