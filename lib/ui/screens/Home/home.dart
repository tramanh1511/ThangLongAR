// // ignore_for_file: library_private_types_in_public_api
// import 'package:ar_app/ui/screens/Home/News.dart';
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:ar_app/ui/screens/Home/introduction_details.dart';
// import 'package:ar_app/ui/screens/Home/tour.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// // class ArticleSection extends StatelessWidget {
// //   final Text title;
// //   final String image;
// //   final Text content;

// //   const ArticleSection({
// //     super.key,
// //     required this.title,
// //     required this.image,
// //     required this.content,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Text(title.data ?? ''),
// //         Image.asset(image),
// //         Text(content.data ?? ''),
// //       ],
// //     );
// //   }
// // }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(leading: Image.asset('assets/image/logo.png')
//           // backgroundColor: Colors.white, //Color(0xFFC07F00),
//           ),
//       body: ListView(
//         children: <Widget>[
//           const ImageSliderSection(),
//           ArticleSection(
//             title: Text(AppLocalizations.of(context)!.introTitle),
//             image: 'assets/image/Home/HTTL.jpg',
//             content:
//                 Text(AppLocalizations.of(context)!.introContent),
//           ),
//           ArticleSection(
//             title: Text(AppLocalizations.of(context)!.tourTitle),
//             image:
//                 'assets/image/Home/tour.jpg',
//             content:
//                Text(AppLocalizations.of(context)!.tourContent),
//           ),
//           ArticleSection(
//             title: Text(AppLocalizations.of(context)!.newsTitle),
//             image: 'assets/image/Home/4.jpg',
//             content:
//                 Text(AppLocalizations.of(context)!.newsContent),
//           ),
//           const FooterSection(),
//         ],
//       ),
//     );
//   }
// }

// // class ArticleSection extends StatelessWidget {
// //   final Text title;
// //   final String image;
// //   final Text content;

// //   const ArticleSection({super.key, 
// //     required this.title,
// //     required this.image,
// //     required this.content,
// //   });

//   @override
//   Widget build(BuildContext context) {


//     const GestureDetector(
//       onTap: () {
//         if (title == 'Giới thiệu') {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const IntroDetail()));
//         } else if (title == 'Tour thăm quan') {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const TourDetail()));
//         } else if (title == 'Tin tức') {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const NewsDetail()));
//         }
//       },
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const SizedBox(height: 8),
//             Text(
//               title,
//               style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFFC07F00)),
//             ),
//             const SizedBox(height: 8),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20.0),
//               child: Image.asset(
//                 image,
//                 // height: 200,
//                 width: MediaQuery.of(context).size.width,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               content,
//               style: const TextStyle(fontSize: 16, color: Colors.black),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ArticleDetailScreen extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final String content;

//   const ArticleDetailScreen({
//     super.key,
//     required this.title,
//     required this.imageUrl,
//     required this.content,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: const Color(0xFFC07F00),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20.0),
//               child: Image.asset(
//                 imageUrl,
//                 width: MediaQuery.of(context).size.width,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 content,
//                 style: const TextStyle(fontSize: 16, color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ImageSliderSection extends StatefulWidget {
//   const ImageSliderSection({super.key});

//   @override
//   _ImageSliderSectionState createState() => _ImageSliderSectionState();
// }

// class _ImageSliderSectionState extends State<ImageSliderSection> {
//   final CarouselController _controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             CarouselSlider(
//               carouselController: _controller,
//               options: CarouselOptions(
//                 height: 200.0,
//                 enlargeCenterPage: true,
//                 aspectRatio: 16 / 9,
//                 viewportFraction: 1.0,
//                 autoPlay: true,
//                 autoPlayInterval: const Duration(seconds: 3),
//               ),
//               items: [
//                 'assets/image/Home1/1.png',
//                 'assets/image/Home1/2.png',
//                 'assets/image/Home1/3.png',
//                 'assets/image/Home1/4.png',
//               ].map((String imageUrl) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(horizontal: 0.0),
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(imageUrl),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//         Positioned(
//           left: 16,
//           top: 100,
//           child: IconButton(
//             icon: const Icon(Icons.navigate_before),
//             onPressed: () {
//               _controller.previousPage();
//             },
//           ),
//         ),
//         Positioned(
//           right: 16,
//           top: 100,
//           child: IconButton(
//             icon: Icon(Icons.navigate_next),
//             onPressed: () {
//               _controller.nextPage();
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FooterSection extends StatelessWidget {
//   const FooterSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       color: Colors.grey[300],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             AppLocalizations.of(context)!.address,
//             style: const TextStyle(fontSize: 16, color: Color(0xFF4C3D3D)),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             AppLocalizations.of(context)!.phone,
//             style: const TextStyle(fontSize: 16, color: Color(0xFF4C3D3D)),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:ar_app/ui/screens/Home/introduction_details.dart';
import 'package:ar_app/ui/screens/Home/tour.dart';
import 'package:ar_app/ui/screens/Home/News.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticleSection extends StatelessWidget {
  final String title;
  final String image;
  final String content;

  const ArticleSection({
    super.key,
    required this.title,
    required this.image,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == AppLocalizations.of(context)!.introTitle ) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const IntroDetail()));
        } else if (title == AppLocalizations.of(context)!.tourTitle) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TourDetail()));
        } else if (title == AppLocalizations.of(context)!.newsTitle) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsDetail()));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFC07F00)),
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Image.asset('assets/image/logo.png')
          // backgroundColor: Colors.white, //Color(0xFFC07F00),
          ),
      body: ListView(
        children: <Widget>[
          const ImageSliderSection(),
          ArticleSection(
            title: AppLocalizations.of(context)!.introTitle,
            image: 'assets/image/Home/HTTL.jpg',
            content:
                AppLocalizations.of(context)!.introContent,
          ),
          ArticleSection(
            title: AppLocalizations.of(context)!.tourTitle,
            image:
                'assets/image/Home/tour.jpg',
            content:
                AppLocalizations.of(context)!.tourContent,
          ),
          ArticleSection(
            title: AppLocalizations.of(context)!.newsTitle,
            image: 'assets/image/Home/4.jpg',
            content:
                AppLocalizations.of(context)!.newsContent,
          ),
          const FooterSection(),
        ],
      ),
    );
  }
}

class ArticleDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String content;

  const ArticleDetailScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFC07F00),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                imageUrl,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSliderSection extends StatefulWidget {
  const ImageSliderSection({super.key});

  @override
  _ImageSliderSectionState createState() => _ImageSliderSectionState();
}

class _ImageSliderSectionState extends State<ImageSliderSection> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
              ),
              items: [
                'assets/image/Home1/1.png',
                'assets/image/Home1/2.png',
                'assets/image/Home1/3.png',
                'assets/image/Home1/4.png',
              ].map((String imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
        Positioned(
          left: 16,
          top: 100,
          child: IconButton(
            icon: const Icon(Icons.navigate_before),
            onPressed: () {
              _controller.previousPage();
            },
          ),
        ),
        Positioned(
          right: 16,
          top: 100,
          child: IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              _controller.nextPage();
            },
          ),
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.address,
            style: const TextStyle(fontSize: 16, color: Color(0xFF4C3D3D)),
          ),
          const SizedBox(height: 8),
          Text(
            AppLocalizations.of(context)!.phone,
            style: const TextStyle(fontSize: 16, color: Color(0xFF4C3D3D)),
          ),
        ],
      ),
    );
  }
}