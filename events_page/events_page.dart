import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventsPage(),
    );
  }
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'View',
              style: TextStyle(
                color: Color(0xFF8158D3),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Events',
              style: TextStyle(
                color: Color(0xFF8158D3),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24), // Space between title and icon
            Icon(
              Icons.event_available, // The icon you want to display
              size: 50, // The size of the icon
              color: Color(0xFF8158D3), // The color of the icon
            ),
            SizedBox(height: 32), // Space between icon and the first item
            EventListItem(
              title: 'International conference on food 2024',
              iconData: Icons.location_on,
            ),
            SizedBox(height: 10), // Space between items
            EventListItem(
              title: 'The Green home',
              iconData: Icons.location_on,
            ),
            SizedBox(height: 10), // Space between items
            EventListItem(
              title: 'Food Management Conference',
              iconData: Icons.location_on,
            ),
            SizedBox(height: 10), // Space between items
            EventListItem(
              title: 'FoodWise Festival',
              iconData: Icons.location_on,
            ),
            SizedBox(height: 10), // Space between items
            EventListItem(
              title: 'Dubai International Food Festival',
              iconData: Icons.location_on,
            ),
          ],
        ),
      ),
    );
  }
}

class EventListItem extends StatelessWidget {
  final String title;
  final IconData iconData;

  const EventListItem({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(iconData, color: const Color(0xFF8158D3)),
          const SizedBox(width: 16), // Spacing between the icon and text
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
