import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TourDetail extends StatefulWidget {
  const TourDetail({Key? key}) : super(key: key);

  @override
  _TourDetailState createState() => _TourDetailState();
}

class _TourDetailState extends State<TourDetail> {
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
        title: Text(AppLocalizations.of(context)!.tourTitle),
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
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Image.asset(
                    'assets/image/Home/tour.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/Home1/6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                     'assets/image/Home1/7.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Dots Indicator
            DotsIndicator(
              dotsCount: 3, // Number of dots
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
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour1,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour2,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour3,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour4,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour5,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.tour6,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),            
          ],
        ),
      ),
    );
  }
}
