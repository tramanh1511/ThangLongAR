// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ar_app/model/destination/destinations.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DestinationDetailsScreen extends StatefulWidget {
  final DestinationModel destination;
  const DestinationDetailsScreen({Key? key, required this.destination}) : super(key: key);
  
  @override
  _DestinationDetailScreenState createState() => _DestinationDetailScreenState();
}

class _DestinationDetailScreenState extends State<DestinationDetailsScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
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
                controller: _pageController,
                children: widget.destination.images
                    .map((image) => Image.asset(image, fit: BoxFit.cover))
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
            // Dots Indicator
            DotsIndicator(
              dotsCount: widget.destination.images.length, // Number of dots
              position: _currentPage, // Current page index
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
              widget.destination.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),                
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.destination.description,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}