import 'package:flutter/material.dart';
import 'details_page.dart';

class OpportunitiesPage extends StatefulWidget {
  const OpportunitiesPage({super.key});

  @override
  State<OpportunitiesPage> createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage> {
  String searchText = '';

  final List<Map<String, dynamic>> opportunities = [
    {
      'icon': Icons.volunteer_activism,
      'title': 'Park Cleaning',
      'subtitle': 'Help clean public parks',
    },
    {
      'icon': Icons.people,
      'title': 'Event Organization',
      'subtitle': 'Help organize community events',
    },
    {
      'icon': Icons.favorite,
      'title': 'Food Distribution',
      'subtitle': 'Distribute food to families',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredOpportunities = opportunities.where((item) {
      final title = item['title'].toString().toLowerCase();
      final subtitle = item['subtitle'].toString().toLowerCase();
      final search = searchText.toLowerCase();

      return title.contains(search) || subtitle.contains(search);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Volunteer Opportunities'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search opportunities',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: filteredOpportunities.length,
              itemBuilder: (context, index) {
                final item = filteredOpportunities[index];

                return Card(
                  child: ListTile(
                    leading: Icon(item['icon']),
                    title: Text(item['title']),
                    subtitle: Text(item['subtitle']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            title: item['title'],
                            description: item['subtitle'],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
