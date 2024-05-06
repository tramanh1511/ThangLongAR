import 'package:ar_app/ui/screens/Destination/destination_details.dart';
import 'package:flutter/material.dart';
import 'package:ar_app/model/destination/destinations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final destinations = createDestinations(context);
    
    return MaterialApp(
      title: 'destinations',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFC07F00),
          title: Text(AppLocalizations.of(context)!.destinations),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // First Section: Image Cover
              Image.asset(
                'assets/image/Destination/cover_page.webp',
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              // Second Section: Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  // onChanged: (query) {
                  //   if (query.contains('Cột cờ')) {
                  //     Navigator.pushNamed(context, '/destination_details.dart');
                  //   }
                  // },
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.search ,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        // Clear the search query
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Third Section: Title and Destination Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dest1,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC07F00),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // List View of Destination Cards
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 7,//destinations.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => 
                                // const SampleScreen(),
                                DestinationDetailsScreen(destination: destinations[index]),
                              ),
                            );
                          }, // Navigate to details page when the card is tapped
                          child: DestinationCard(
                            destination: destinations[index],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Image.asset(
                  destination.images[0],
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                         const Color(0xFFC07F00),
                         const Color(0xFFC07F00).withOpacity(0),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        destination.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
